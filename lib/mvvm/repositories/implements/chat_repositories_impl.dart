import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/chat/chat_thread.dart';
import 'package:fit_life/mvvm/repositories/chat_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChatRepositories)
class ChatRepositoriesImpl implements ChatRepositories {
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
}
