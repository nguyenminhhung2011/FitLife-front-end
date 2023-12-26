import 'package:fit_life/mvvm/ui/conversation/view/widgets/conversation_item_view.dart';
import 'package:flutter/material.dart';

class AllChatView extends StatefulWidget {
  const AllChatView({super.key});

  @override
  State<AllChatView> createState() => _AllChatViewState();
}

class _AllChatViewState extends State<AllChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView.separated(
        itemBuilder: (_, __) => const ConversationItemView(),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}
