import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/core/components/network/base_api.dart';
import 'package:fit_life/mvvm/data/remote/chat_thread/chat_thread_api.dart';
import 'package:fit_life/mvvm/object/entity/chat/chat_thread.dart';
import 'package:fit_life/mvvm/object/model/chat_thread/chat_thread_model.dart';
import 'package:fit_life/mvvm/repositories/chat_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChatRepositories)
class ChatRepositoriesImpl extends BaseApi implements ChatRepositories {
  final ChatThreadApi _chatThreadApi;
  ChatRepositoriesImpl(this._chatThreadApi);
  @override
  Future<SResult<List<ChatThread>>> getAllChats() async {
    await Future.delayed(const Duration(seconds: 2));
    return const Either.right(
      [
        ChatThread(id: "0", title: "title", openAiThreadId: "openAiThreadId"),
        ChatThread(id: "1", title: "title", openAiThreadId: "openAiThreadId"),
        ChatThread(id: "2", title: "title", openAiThreadId: "openAiThreadId"),
        ChatThread(id: "3", title: "title", openAiThreadId: "openAiThreadId"),
        ChatThread(id: "4", title: "title", openAiThreadId: "openAiThreadId"),
        ChatThread(id: "5", title: "title", openAiThreadId: "openAiThreadId"),
      ],
    );
  }

  @override
  Future<SResult<ChatThread>> createChatThread(
          {required String uid, required String title}) async =>
      await apiCall<ChatThreadModel, ChatThread>(
        mapper: (result) => result.toEntity,
        request: () async =>
            await _chatThreadApi.createThread(body: {"title": title}),
      );

  @override
  Future<SResult> deleteThread(String id) async => await apiCall(
      mapper: (_) => null,
      request: () async => await _chatThreadApi.deleteThread(id));

  @override
  Future<SResult<ChatThread>> getThreadById(String id) async =>
      await apiCall<ChatThreadModel, ChatThread>(
        mapper: (result) => result.toEntity,
        request: () async => await _chatThreadApi.getThreadById(id),
      );

  @override
  Future<SResult<List<ChatThread>>> getThreadByUser() async =>
      await apiCall<List<ChatThreadModel>, List<ChatThread>>(
        mapper: (result) => result.map((e) => e.toEntity).toList(),
        request: () async => await _chatThreadApi.getThreadByUser(),
      );
}
