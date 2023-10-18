import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/app_coordinator.dart';
import 'package:flutter_base_clean_architecture/core/components/constant/constant.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class BottomSelectedPrompt extends StatelessWidget {
  const BottomSelectedPrompt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * 0.8,
        minHeight: context.heightDevice * 0.6,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 3.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Theme.of(context).hintColor.withOpacity(0.2),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Text(
                'Prompt selected',
                style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              Text(
                'Selected prompt to fast input question for chat bot',
                style: context.titleSmall
                    .copyWith(color: Theme.of(context).hintColor),
              ),
              const Divider(thickness: 0.8),
              Expanded(
                  child: ListView.builder(
                itemCount: Constant.prompts.length,
                itemBuilder: (_, index) {
                  final prompt = Constant.prompts[index];
                  return GestureDetector(
                    onTap: () => context.popArgs(prompt),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15.0),
                      margin: const EdgeInsets.symmetric(vertical: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context).cardColor,
                      ),
                      child: Row(
                        children: [
                          Text('🎙️', style: context.titleLarge),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Text(prompt, style: context.titleSmall),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
