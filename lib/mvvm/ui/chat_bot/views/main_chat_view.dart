import 'package:collection/collection.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/mvvm/ui/conversation/view/widgets/conversation_item_view.dart';
import 'package:flutter/material.dart';

class MainChatView extends StatefulWidget {
  const MainChatView({super.key});

  @override
  State<MainChatView> createState() => MainChatViewState();
}

class MainChatViewState extends State<MainChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: _drawerView(context),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          "Chat pt",
          style: context.titleLarge
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget _drawerView(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: kToolbarHeight),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          color: Theme.of(context).cardColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(ImageConst.brainIcon, width: 30, height: 30),
              const SizedBox(width: 10.0),
              Expanded(
                  child: Text(
                "FitLife chatbot",
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.bold),
              ))
            ],
          ),
        ),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 0.0),
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: SupportButton(),
              ),
              const Divider(),
              ...List.generate(
                5,
                (index) =>
                    const Column(children: [ConversationItemView(), Divider()]),
              ),
              ...Constant.mainChatButton.entries
                  .map((e) => GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(e.value as IconData, size: 28),
                              const SizedBox(width: 10.0),
                              Expanded(
                                child: Text(
                                  e.key,
                                  style: context.titleLarge
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                  .expand((e) => [e, const Divider()])
                  .toList()
                ..removeLast()
            ],
          ),
        )
      ],
    );
  }
}

class SupportButton extends StatelessWidget {
  const SupportButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...["Explore", "Create bot"]
            .mapIndexed(
              (index, e) => Expanded(child: _button(context, index, e)),
            )
            .expand((e) => [e, const SizedBox(width: 10.0)])
            .toList()
          ..removeLast(),
      ],
    );
  }

  Container _button(BuildContext context, int index, String e) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (index == 0)
            const Icon(Icons.search)
          else
            const Icon(Icons.add_reaction),
          const SizedBox(height: 4.0),
          Row(
            children: [
              Expanded(
                child: Text(
                  e,
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(width: 5.0),
              if (index == 0)
                const Icon(Icons.arrow_forward_ios, size: 14)
              else
                const Icon(Icons.add, size: 16),
            ],
          ),
        ],
      ),
    );
  }
}
