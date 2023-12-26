import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/fit_life/divider_dot.dart';
import 'package:flutter/material.dart';

class YourBotBottom extends StatefulWidget {
  const YourBotBottom({super.key});

  @override
  State<YourBotBottom> createState() => _YourBotBottomState();
}

class _YourBotBottomState extends State<YourBotBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: context.heightDevice * .9,
        minHeight: context.heightDevice * .8,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15.0),
            const DividerDot(),
            const SizedBox(height: 15.0),
            IconButton(
                onPressed: () => context.pop(),
                icon: Icon(
                  Icons.close,
                  color: context.titleLarge.color,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Your bots",
                style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: ListView.separated(
                itemBuilder: (_, __) => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          ImageConst.banner3,
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "GPT-4",
                              style: context.titleLarge
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 2.0),
                            Text(
                              "limited access",
                              style: context.titleSmall
                                  .copyWith(color: Theme.of(context).hintColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                separatorBuilder: (_, __) => const Divider(),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
