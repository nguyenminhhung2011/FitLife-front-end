import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/chat/chat_thread.dart';

abstract class ChatRepositories {
  Future<SResult<List<ChatThread>>> getAllChats();
  Future<SResult<ChatThread>> getThreadByUser();
  Future<SResult<ChatThread>> getThreadById(String id);
  Future<SResult> deleteThread(String id);
  Future<SResult<ChatThread>> createChatThread(
      {required String uid, required String title});
}
