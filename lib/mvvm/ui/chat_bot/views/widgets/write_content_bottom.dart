import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/custom_input_label_field.dart';
import 'package:flutter/material.dart';

class WriteContentBottom extends StatefulWidget {
  const WriteContentBottom({super.key});

  @override
  State<WriteContentBottom> createState() => _WriteContentBottomState();
}

class _WriteContentBottomState extends State<WriteContentBottom> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20.0),
        Row(
          children: [
            IconButton(
                onPressed: context.pop,
                icon: Icon(Icons.arrow_back, color: context.titleLarge.color)),
            const Spacer(),
            ButtonCustom(
              enableWidth: false,
              height: 40.0,
              child: Text(
                "Save",
                style: context.titleSmall
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              onPress: () {},
            )
          ],
        ),
        Text("Text",
            style: context.titleLarge.copyWith(fontWeight: FontWeight.bold)),
        Text(
          "Title",
          style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        CustomInputLabelField(
            label: "", controller: _titleController, lines: 2),
        Text(
          "Content",
          style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        CustomInputLabelField(
            label: "", controller: _contentController, lines: 6),
        const SizedBox(height: 20.0),
      ]
          .expand((e) => [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: e),
                const SizedBox(height: 10.0),
              ])
          .toList(),
    );
  }
}
