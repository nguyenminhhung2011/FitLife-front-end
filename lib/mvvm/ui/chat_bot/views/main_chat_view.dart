import 'dart:developer';

import 'package:collection/collection.dart';
// import 'package:dash_bubble/dash_bubble.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/dependency_injection/di.dart';
// import 'package:fit_life/core/services/bubble_service.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/api_key/input_api_cubit.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/main_chat/main_chat_data.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/main_chat/main_chat_view_model.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/all_chat_view.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/all_pt_view.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/chat_bot_view.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/create_bot_view.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/input_api.dart';
import 'package:fit_life/mvvm/ui/chat_bot/views/widgets/support_button.dart';
import 'package:fit_life/mvvm/ui/conversation/view/widgets/conversation_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const platform = MethodChannel('your_channel_name');

Future<void> callNativeMethod() async {
  try {
    await platform.invokeMethod('nativeMethod');
  } catch (e) {
    log('Error calling native method: $e');
  }
}

class MainChatView extends ConsumerStatefulWidget {
  const MainChatView({super.key});

  @override
  ConsumerState<MainChatView> createState() => MainChatViewState();
}

class MainChatViewState extends ConsumerState<MainChatView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  MainChatViewModel get _vm => ref.read(mainChatStateNotifier.notifier);

  MainChatState get _state => ref.watch(mainChatStateNotifier);

  MainChatData get _data => _state.data;

  String? get _currentChatId => _data.currentChatId;

  int get _currentTab => _data.currentTab;

  void _listenStateChange(MainChatState state) {
    state.maybeWhen(
      changeTabSuccess: (_) {
        if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
          _scaffoldKey.currentState?.openEndDrawer();
        }
      },
      changeChatFocus: (_) {
        if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
          _scaffoldKey.currentState?.openEndDrawer();
        }
      },
      orElse: () {},
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(mainChatStateNotifier, (_, next) => _listenStateChange(next));
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: _drawerView(context),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          switch (_currentTab) {
            3 => "Create your pt assistant",
            4 => "All chat",
            _ => "ChatThread pt"
          },
          style: context.titleLarge
              .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: [
        ProviderScope(child: ChatBotView(chatId: _currentChatId ?? "")),
        const ProviderScope(child: AllPtView()),
        BlocProvider(
          create: (_) => injector.get<InputApiCubit>(),
          child: const InputApiView(),
        ),
        const ProviderScope(child: CreateBotView()),
        const ProviderScope(child: AllChatView()),
      ][_currentTab],
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
              )),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 0.0),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SupportButton(
                  onButtonTap: (index) => _vm.changeTab(index),
                ),
              ),
              const Divider(),
              ...List.generate(
                5,
                (index) => Column(children: [
                  ConversationItemView(
                    onPress: () => _vm.changeFocusChat("Yeah $index"),
                  ),
                  const Divider()
                ]),
              ),
              ...Constant.mainChatButton.entries
                  .mapIndexed((index, e) => InkWell(
                        onTap: () async {
                          if (e.key == "Api key") {
                            _vm.changeTab(2);
                          } else if (e.key == "All chats") {
                            _vm.changeTab(4);
                          } else {
                            await context.showYourBotBottom();
                          }
                        },
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
                                  style: context.titleMedium
                                      .copyWith(fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                  .expand((e) => [e, const Divider()])
                  .toList()
                ..removeLast(),
              const SizedBox(height: 32.0),
            ],
          ),
        )
      ],
    );
  }
}
