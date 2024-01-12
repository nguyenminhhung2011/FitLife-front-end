import 'package:dart_either/dart_either.dart';
import 'package:fit_life/core/components/network/app_exception.dart';
import 'package:fit_life/mvvm/object/entity/chat/chat.dart';
import 'package:fit_life/mvvm/repositories/chat_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ChatRepositories)
class ChatRepositoriesImpl implements ChatRepositories {
  @override
  Future<SResult<List<Chat>>> getAllChats() async {
    await Future.delayed(const Duration(seconds: 2));
    return Either.right(
      [
        Chat(id: 0, title: "This is title of chat", createdAt: DateTime.now()),
        Chat(id: 1, title: "This is title of chat", createdAt: DateTime.now()),
        Chat(id: 2, title: "This is title of chat", createdAt: DateTime.now()),
        Chat(id: 3, title: "This is title of chat", createdAt: DateTime.now()),
        Chat(id: 4, title: "This is title of chat", createdAt: DateTime.now()),
      ],
    );
  }
}
