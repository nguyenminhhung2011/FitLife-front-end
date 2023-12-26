import 'package:collection/collection.dart';
import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/services/image_pic_service.dart';
import 'package:flutter/material.dart';

class AddSourceBottom extends StatefulWidget {
  const AddSourceBottom({super.key});

  @override
  State<AddSourceBottom> createState() => _AddSourceBottomState();
}

class _AddSourceBottomState extends State<AddSourceBottom> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () => context.pop(),
              icon: Icon(Icons.close, color: context.titleLarge.color),
            )
          ],
        ),
        Text(
          "Add a knowledge source",
          style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10.0),
        Text(
          "Provide custom knowledge that your bot will access to inform its responses. Your bot will retrieve relevant sections from the knowledge base based on the user message.",
          style:
              context.titleSmall.copyWith(color: Theme.of(context).hintColor),
        ),
        const SizedBox(height: 15.0),
        Row(
          children: [
            ...["📂 File", "📒 Text"].mapIndexed((index, element) {
              return Expanded(
                child: ButtonCustom(
                  onPress: () async {
                    if (index == 0) {
                      final file = await ImagePicService.pickFile();
                      // ignore: use_build_context_synchronously
                      if (file != null) context.popArgs(file);
                      return;
                    }
                    final writeContent = await context.writeContentBottom();
                  },
                  color: Theme.of(context).cardColor,
                  height: 45.0,
                  child: Text(
                    element,
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
          ].expand((e) => [e, const SizedBox(width: 10.0)]).toList()
            ..removeLast(),
        ),
        const SizedBox(height: 20.0),
      ]
          .expand((element) => [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: element,
                )
              ])
          .toList(),
    );
  }
}
