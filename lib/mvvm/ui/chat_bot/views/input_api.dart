import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/loading_page.dart';
import 'package:fit_life/mvvm/data/local/preferences.dart';
import 'package:fit_life/mvvm/ui/chat_bot/view_model/api_key/input_api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputApiView extends StatefulWidget {
  const InputApiView({super.key});

  @override
  State<InputApiView> createState() => _InputApiViewState();
}

class _InputApiViewState extends State<InputApiView> {
  final TextEditingController _controller = TextEditingController();

  InputApiCubit get _bloc => context.read<InputApiCubit>();

  TextStyle get _smallText => context.titleSmall.copyWith(fontSize: 12);

  @override
  void initState() {
    _controller.text = CommonAppSettingPref.getApiKey();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InputApiCubit, bool>(builder: (_, state) {
      return Stack(
        children: [
          _body(context),
          if (state)
            Container(
              color: Colors.black45,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: StyleLoadingWidget.foldingCube.renderWidget(
                    size: 40.0, color: Theme.of(context).primaryColor),
              ),
            )
        ],
      );
    });
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "An API key in OpenAI is a unique authentication token that allows you to access and make requests to the OpenAI API.",
                style: _smallText),
            const SizedBox(),
            _textBox(),
            ButtonCustom(
                onPress: () => _bloc.saveApiKey(_controller.text),
                height: 40.0,
                radius: 5.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.save, color: Colors.white, size: 16),
                    Text(
                      " Save",
                      style: _smallText.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ].expand((e) => [e, const SizedBox(height: 10.0)]).toList()
            ..removeLast(),
        ),
      ),
    );
  }

  Widget _textBox() {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          gapPadding: 10,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              BorderSide(color: Theme.of(context).dividerColor, width: 1.5),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 1.5),
          gapPadding: 10,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          gapPadding: 10,
        ),
        labelText: "Put your key there",
      ), // InputDecoration
      keyboardType: TextInputType.emailAddress,
      maxLines: 1,
      style: _smallText,
      textInputAction: TextInputAction.next,
      onSubmitted: (_) {},
    );
  }
}
