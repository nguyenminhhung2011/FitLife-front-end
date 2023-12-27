import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/custom_input_label_field.dart';
import 'package:fit_life/core/components/widgets/dropdown_button_custom.dart';
import 'package:fit_life/core/services/image_pic_service.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/create_bot/create_bot_data.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/create_bot/create_bot_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class CreateBotView extends ConsumerStatefulWidget {
  const CreateBotView({super.key});

  @override
  ConsumerState<CreateBotView> createState() => _CreateBotViewState();
}

class _CreateBotViewState extends ConsumerState<CreateBotView> {
  final TextEditingController _chatBotNameController = TextEditingController();

  final TextEditingController _serverUrlController = TextEditingController();

  final TextEditingController _accessController = TextEditingController();

  final TextEditingController _promptController = TextEditingController();

  final TextEditingController _greetingController = TextEditingController();

  final TextEditingController _bioController = TextEditingController();

  CreateBotViewModel get _vm => ref.read(createBotStateNotifier.notifier);

  CreateBotState get _state => ref.watch(createBotStateNotifier);

  CreateBotData get _data => _state.data;

  BothImageData? get _image => _data.botImage;

  File? get _sourceFile => _data.sourceFile;

  int get _behaviorTab => _data.behaviorTab;

  String get _model => _data.model;

  TextStyle get _headerStyle =>
      context.titleMedium.copyWith(fontWeight: FontWeight.bold);

  TextStyle get _smallStyle => context.titleSmall
      .copyWith(color: Theme.of(context).hintColor, fontSize: 12.0);

  @override
  void dispose() {
    _chatBotNameController.dispose();
    _serverUrlController.dispose();
    _accessController.dispose();
    _promptController.dispose();
    _greetingController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ButtonCustom(
          onPress: () {},
          height: 45.0,
          child: Text(
            "Create bot",
            style: context.titleMedium
                .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20.0),
          GestureDetector(
            onTap: () async =>
                await ImagePicService.selectedImage(ImageSource.gallery)
                    .then(_vm.selectedImage),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_image == null || _image!.image == null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(ImageConst.editImage,
                        width: 100, height: 100, fit: BoxFit.cover),
                  )
                else
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.memory(_image!.image!,
                        width: 100, height: 100, fit: BoxFit.cover),
                  )
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Align(
            alignment: Alignment.center,
            child: Text("Edit picture", style: _headerStyle),
          ),
          const SizedBox(height: 15.0),
          Text("Handle", style: _headerStyle),
          const SizedBox(height: 10.0),
          Text(
            "Should be unique and use 4-20 characters, including letters, numbers, dashes and underscores",
            style: _smallStyle,
          ),
          const SizedBox(height: 15.0),
          CustomInputLabelField(
            label: "",
            controller: _chatBotNameController,
            hintText: "Chat bot name ",
          ),
          const SizedBox(height: 20.0),
          const Divider(thickness: 1),
          const SizedBox(height: 20.0),
          Text(
            "Bot behavior",
            style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          _headerTabView(context),
          const Divider(height: 0),
          const SizedBox(height: 15.0),
          [_userPromptTab(context), _userServerTab(context)][_behaviorTab],
          const SizedBox(height: 20.0),
          const Divider(),
          const SizedBox(height: 20.0),
          Text("Bot profile",
              style: context.titleMedium.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 20.0),
          Text("Bio", style: _headerStyle),
          const SizedBox(height: 15.0),
          CustomInputLabelField(
            label: "",
            hintText:
                "Describe what your bot does and what people can expect from it.",
            controller: _bioController,
            lines: 4,
          ),
          const SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("${_bioController.text.length}/4000",
                  style: context.titleSmall),
            ],
          ),
          const SizedBox(height: 20.0),
          Text("Access", style: _headerStyle),
          const SizedBox(height: 5.0),
          Text(
              "If this setting is enabled, the bot will be added to your profile and will be publicly accessible. Turning this off will make the bot private.",
              style: _smallStyle),
          const SizedBox(height: 100.0),
        ]
            .expand((element) => [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: element,
                  )
                ])
            .toList(),
      ),
    );
  }

  Widget _userPromptTab(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Base bot", style: _headerStyle),
        const SizedBox(height: 10.0),
        DropdownButtonCustom<String?>(
          items: Constant.modelConstant
              .map(
                (element) => DropdownMenuItem<String>(
                  value: element,
                  child: Text(
                    element,
                    style: context.titleSmall
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 12.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(),
          radius: 10.0,
          value: _model,
          onChange: _vm.changeModel,
        ),
        const SizedBox(height: 20.0),
        Text("Prompt", style: _headerStyle),
        const SizedBox(height: 10.0),
        Text(
            "Tell your bot how to behave and how to respond to user messages. Try to be as specific as possible.",
            style: _smallStyle),
        const SizedBox(height: 10.0),
        Text(
          "Your best practice for prompt",
          style: _smallStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        const SizedBox(height: 10.0),
        CustomInputLabelField(
          label: "",
          hintText:
              "e.g. You are the CatBot. You will try to respond to the user's questions, but you get easily distracted.",
          controller: _promptController,
          lines: 4,
        ),
        const SizedBox(height: 20.0),
        Text("Knowledge base", style: _headerStyle),
        const SizedBox(height: 5.0),
        Text(
            "Provide custom knowledge that your bot will access to inform its responses. Your bot will retrieve relevant sections from the knowledge base based on the user message. The data in the knowledge base may be made viewable by other users through bot responses or citations.",
            style: _smallStyle),
        if (_sourceFile != null) ...[
          const SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border:
                  Border.all(width: 1.5, color: Theme.of(context).dividerColor),
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Theme.of(context).shadowColor.withOpacity(0.1),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_sourceFile!.path.split("/").last,
                    style: context.titleSmall),
                const SizedBox(height: 5.0),
                Text.rich(
                  TextSpan(
                    style: context.titleSmall,
                    children: [
                      const TextSpan(text: "File"),
                      TextSpan(
                        text: "Uploading",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
        const SizedBox(height: 15.0),
        ButtonCustom(
            onPress: () async {
              final addSourceView = await context.addSourceBottom();
              if (addSourceView is File) {
                _vm.selectSourceFile(addSourceView);
              }
            },
            // await ImagePicService.pickFile().then(_vm.selectSourceFile),
            height: 45.0,
            color: Theme.of(context).cardColor,
            borderColor: Theme.of(context).primaryColor,
            child: Text(
              "Add knowledge source",
              style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
            )),
        const SizedBox(height: 20.0),
        Text("Greeting message", style: _headerStyle),
        const SizedBox(height: 5.0),
        Text(
            "The bot will send this message at the beginning of every conversation.",
            style: _smallStyle),
        const SizedBox(height: 10.0),
        CustomInputLabelField(
          label: "",
          hintText:
              "e.g. Hello, I'm CatBot, your new digital pet. Ask me something about cats.",
          controller: _greetingController,
          lines: 4,
        ),
      ],
    );
  }

  Widget _userServerTab(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Server url", style: _headerStyle),
        const SizedBox(height: 10.0),
        Text(
          "Provide a link to your bot server. To learn how to get a bot server running, checkout:",
          style: _smallStyle,
        ),
        const SizedBox(height: 5.0),
        Text(
          "https://developer.poe.com/server-bots/quick-start",
          style: _smallStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        const SizedBox(height: 15.0),
        CustomInputLabelField(label: "", controller: _serverUrlController),
        const SizedBox(height: 20.0),
        Text("Access key", style: _headerStyle),
        Text(
            "This 32-character key will be included in requests to your server.",
            style: _smallStyle),
        const SizedBox(height: 10.0),
        CustomInputLabelField(
          label: '',
          hintText: "Generate access",
          controller: _accessController,
        ),
        const SizedBox(height: 15.0),
        ButtonCustom(
            onPress: () {},
            height: 45.0,
            color: Theme.of(context).cardColor,
            borderColor: Theme.of(context).primaryColor,
            child: Text(
              "Regenerate",
              style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
            )),
        const SizedBox(height: 15.0),
        Text("Check reachability", style: _headerStyle),
        Text(
            "Send a test settings request to your URL to check its reachability.",
            style: _smallStyle),
        const SizedBox(height: 15.0),
        ButtonCustom(
            onPress: () {},
            height: 45.0,
            color: Theme.of(context).cardColor,
            borderColor: Theme.of(context).primaryColor,
            child: Text(
              "Run check",
              style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
            )),
      ],
    );
  }

  Row _headerTabView(BuildContext context) {
    return Row(
      children: [
        ...["📃 User prompt", "💻 User server"].mapIndexed(
          (index, e) {
            final itemColor =
                (index == _behaviorTab) ? Theme.of(context).primaryColor : null;
            return Expanded(
                child: InkWell(
              onTap: () => _vm.changeBehaviorTab(index),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10.0),
                  Text(
                    e,
                    style: context.titleSmall.copyWith(
                        fontWeight: FontWeight.bold, color: itemColor),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                      width: double.infinity, height: 4.0, color: itemColor),
                ],
              ),
            ));
          },
        ),
      ],
    );
  }
}
