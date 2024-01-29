import 'dart:developer';

import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
import 'package:fit_life/core/services/speach_text_service.dart';
import 'package:fit_life/core/services/text_speech_service.dart';
import 'package:fit_life/generated/intl/messages_en.dart';
import 'package:fit_life/mvvm/object/entity/message/message.dart';
import 'package:fit_life/mvvm/object/entity/message/message_status.dart';
import 'package:fit_life/mvvm/object/entity/message/message_type.dart';
import 'package:fit_life/mvvm/object/entity/trainer/trainer.dart';
import 'package:fit_life/mvvm/repositories/assistant_repositories.dart';
import 'package:fit_life/mvvm/repositories/chat_repositories.dart';
import 'package:fit_life/mvvm/repositories/message_repositories.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/chat_bot/chat_bot_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:riverpod/riverpod.dart';

part 'chat_bot_state.dart';

part 'chat_bot_view_model.freezed.dart';

Message _basicMessage = Message(
  id: "null",
  message: "",
  createdAt: DateTime.now(),
  status: MessageStatus.success,
  role: MessageType.system,
);

const String _messageIdNull = "";

final chatBotStateNotifier =
    AutoDisposeStateNotifierProvider<ChatBotViewModel, ChatBotState>(
        (ref) => ChatBotViewModel());

@injectable
class ChatBotViewModel extends StateNotifier<ChatBotState> {
  final _chatRepositories = injector.get<ChatRepositories>();
  final _messageRepositories = injector.get<MessageRepositories>();
  final _speechTextService = injector.get<SpeechTextService>();
  final _textSpeechService = injector.get<TextSpeechService>();
  final _assistantRepositories = injector.get<AssistantRepositories>();

  ChatBotViewModel()
      : super(
          const _Initial(data: ChatBotData(messages: <Message>[])),
        );

  ChatBotData get data => state.data;

  ChatBotState _messageResponseToState(SResult<Message> response) =>
      response.fold(
        ifLeft: (error) {
          final newMessages = data.messages.sublist(1);
          newMessages.setAll(
              0, [newMessages.first.copyWith(status: MessageStatus.error)]);
          return _SendMessageFailed(
            message: error.message,
            data: data.copyWith(messages: newMessages),
          );
        },
        ifRight: (rData) => _SendMessageSuccess(
          data: data.copyWith(
            messages: [
              rData,
              ...data.messages.sublist(1),
            ],
          ),
        ),
      );

  ///[🎉 Speech to text handler]
  Future<void> initialTextToSpeech() async {
    await _textSpeechService.initTextToSpeech();
  }

  Future<void> startSpeechText(
      {required String content, required String messageId}) async {
    if (state.loadingMessage) {
      return;
    }
    try {
      if (state.listeningSpeech) {
        await stopListeningSpeech();
      }
      if (!mounted) return;
      state = _SpeechText(data: data.copyWith(messageSpeechId: messageId));
      await _textSpeechService.startHandler(text: content);
      if (!mounted) return;
      if (data.messageSpeechId == messageId) {
        state =
            _StopSpeech(data: data.copyWith(messageSpeechId: _messageIdNull));
      }
    } catch (error) {
      log("🐛[Speech text] ${error.toString()}");
      state = _StopSpeech(data: data);
    }
  }

  Future<void> cancelSpeech({
    required String previousMessageId,
    required String messageId,
    required Function eventCall,
  }) async {
    state =
        _StopListening(data: data.copyWith(messageSpeechId: _messageIdNull));
    await _textSpeechService.cancelHandler();
    if (previousMessageId != messageId) {
      eventCall.call();
    }
  }

  Future<void> stopSpeechText() async {
    if (!mounted) return;
    state =
        _StopListening(data: data.copyWith(messageSpeechId: _messageIdNull));
    await _textSpeechService.cancelHandler();
  }

  ///[🎉 listening speech handler]

  Future<void> initialSpeechToText() async {
    final initSpeech = await _speechTextService.initSpeechToText((status) {
      if (status == "listening") {
        log("🎉[Status] listening");
      } else {
        log("🎉[Status] Stop listening");
        if (mounted) {
          state = _StopListening(data: data);
        }
      }
    });
    if (!mounted) return;
    if (initSpeech) {
      state = _InitialSpeechSuccess(data: data.copyWith(micAvailable: true));
    }
  }

  Future<void> startListeningSpeech() async {
    if (state.loadingMessage) {
      return;
    }
    if (!data.micAvailable) {
      return;
    }
    try {
      if (state.speechText) {
        await stopSpeechText();
      }
      state = _ListeningSpeech(data: data, textResponse: '');
      _speechTextService.startSpeak((text) {
        if (!mounted) return;
        state = _ListeningSpeech(data: data, textResponse: text);
      });
    } catch (err) {
      log("🐛[listening speech] ${err.toString()}");
      state = _StopListening(data: data);
    }
  }

  Future<void> stopListeningSpeech() async {
    if (!mounted) return;
    state = _StopListening(data: data);
    await _speechTextService.stopSpeak();
  }

  Future<void> removeAllEventHandler() async {
    await _speechTextService.stopSpeak();
    await _textSpeechService.cancelHandler();
  }

  ///[🎉 Chat thread handler]

  Future<void> getChatThread(String threadId) async {
    state = _Loading(data: data);
    final response = await _chatRepositories.getThreadById(threadId);
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) =>
          _GetChatThreadFailed(data: data, message: error.message),
      ifRight: (rData) => _GetChatThreadSuccess(
        data: data.copyWith(
            chatThread: rData, messages: rData.chats?.reversed.toList() ?? []),
      ),
    );
  }

  Future<void> createChatThread({required String title}) async {
    state = _Loading(data: data);
    final response = await _assistantRepositories.sendMessageAndCreate(title);
    if (!mounted) return;
    state = response.fold(
      ifLeft: (error) =>
          _CreateChatThreadFailed(data: data, message: error.message),
      ifRight: (rData) =>
          _CreateChatThreadSuccess(message: rData.threadId, data: data),
    );
  }

  ///[🎉 Message handler]

  Future<void> getMessage() async {
    state = _Loading(data: data);
    final response = await _messageRepositories.getMessage();
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    state = response.fold(
      ifRight: (rData) => _GetAllMessageSuccess(
        data: data.copyWith(messages: rData),
      ),
      ifLeft: (err) => _GetAllMessageFailed(data: data, message: err.message),
    );
  }

  Future<void> reSendMessage() async {
    if (state.loadingMessage) return;
    final messages = data.messages;
    if (messages.isEmpty) {
      return;
    }
    if (messages.first.role.isSystem || messages.first.role.isAssistant) {
      return;
    }

    final loadingMessage =
        _basicMessage.copyWith(status: MessageStatus.loading);

    state = _LoadingMessage(
      data: data.copyWith(
        messages: [
          loadingMessage,
          messages.first.copyWith(status: MessageStatus.success),
          ...messages.sublist(1),
        ],
      ),
    );

    final response = await _messageRepositories.sendMessage(
      message: data.messages.sublist(1).map((e) => e.message).toList(),
    );

    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    // state = _messageResponseToState(response);
  }

  Future<void> sendMessage(
      {required String id, required String content}) async {
    if (state.loadingMessage) {
      return;
    }
    if (content.isEmpty) {
      state =
          _SendMessageFailed(data: data, message: "Text field is not empty");
      return;
    }
    final userSendMessage =
        _basicMessage.copyWith(message: content, role: MessageType.user);
    final loadingMessage =
        _basicMessage.copyWith(status: MessageStatus.loading);
    state = _LoadingMessage(
      data: data.copyWith(
        messages: [loadingMessage, userSendMessage, ...data.messages],
      ),
    );
    final response =
        await _assistantRepositories.sendMessage(id: id, message: content);

    if (!mounted) return;

    state = _messageResponseToState(response);
  }

  Future<void> getAllPrTrainer() async {
    state = _Loading(data: data);
    await Future.delayed(const Duration(seconds: 3));
    state = _GetAllPrTrainerSuccess(
        data: data.copyWith(allPreTrainer: [
      Constant.defaultTrainer,
      Constant.defaultTrainer.copyWith(id: "1", name: "Web-search"),
      Constant.defaultTrainer.copyWith(id: "2", name: "ChatGPT"),
    ]));
  }

  Future<void> getPreviewTrainer() async {
    state = _Loading(data: data);
    await Future.delayed(const Duration(seconds: 3));
    state = _GetPreviewTrainerSuccess(
        data: data.copyWith(
      previewTrainer: [
        Constant.defaultTrainer
            .copyWith(id: "1", name: "PT Hung", image: ImageConst.intro2),
        Constant.defaultTrainer
            .copyWith(id: "2", name: "PT Hoang", image: ImageConst.banner2),
        Constant.defaultTrainer
            .copyWith(id: "3", name: "PT Dai", image: ImageConst.banner3),
        Constant.defaultTrainer
            .copyWith(id: "4", name: "PT Hao", image: ImageConst.intro1),
      ],
    ));
  }

  void selectTrainerAssistant(Trainer newTrainer) {
    state = _SelectAssistantSuccess(
      data: data.copyWith(trainerSelected: newTrainer),
    );
  }

  Future<void> clearConservation() async {
    if (state.loadingMessage) {
      return;
    }
    state = _Loading(data: data);
    final response = await _messageRepositories.clearConversationI();

    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;

    if (response) {
      state = _ClearConversationSuccess(
        data: data.copyWith(messages: List.empty(growable: true)),
      );
    } else {
      state = _ClearConversationFailed(
        data: data,
        message: "Clear conversation failed",
      );
    }
  }

  Future<void> deleteMessage({required String messageId}) async {
    if (state.loadingMessage) {
      return;
    }
    state = _Loading(data: data);
    final response =
        await _messageRepositories.deleteMessage(messageId: messageId);

    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;
    if (response) {
      state = _DeleteMessageSuccess(
        data: data.copyWith(
          messages: data.messages
              .where((element) => element.id.toString() != messageId)
              .toList(),
        ),
      );
    } else {
      state =
          _DeleteMessageFailed(data: data, message: "Delete message failed");
    }
  }
}
