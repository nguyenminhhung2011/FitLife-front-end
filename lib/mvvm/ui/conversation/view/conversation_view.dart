import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/mvvm/ui/conversation/view/widgets/conversation_item_view.dart';
import 'package:flutter/material.dart';

class ConversationView extends StatefulWidget {
  const ConversationView({super.key});

  @override
  State<ConversationView> createState() => _ConversationViewState();
}

class _ConversationViewState extends State<ConversationView> {
  Color get _backGroundColor => Theme.of(context).scaffoldBackgroundColor;

  Color get _primaryColor => Theme.of(context).primaryColor;

  void _createNewChat() async {
    final show = await context.selectChatPt();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ButtonCustom(
          onPress: _createNewChat,
          height: 45.0,
          radius: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.add, color: Colors.white),
              Text(
                " New chat",
                style: context.titleMedium
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: _primaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Conversation",
          style: context.titleLarge.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 10,
        itemBuilder: (_, index) => const ConversationItemView(),
      ),
    );
  }
}
