import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/handle_time.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';

class ConversationItemView extends StatelessWidget {
  final Function()? onPress;
  const ConversationItemView({
    super.key,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onPress != null) {
          onPress?.call();
        } else {
          context.openListPageWithRoute(Routes.chatBot);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                ImageConst.banner2,
                fit: BoxFit.cover,
                width: 45.0,
                height: 45.0,
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text("Assistant", style: context.titleSmall),
                      ),
                      Text(
                        getYmdFormat(DateTime.now()),
                        style: context.titleSmall.copyWith(fontSize: 12.0),
                      ),
                      const SizedBox(width: 5.0),
                      Icon(Icons.arrow_forward_ios_outlined,
                          color: context.titleLarge.color, size: 12)
                    ],
                  ),
                  Text(
                    "Structural pattern",
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Hello this is ai chatbot, Welcome to my chat side, yeah yeah ",
                    maxLines: 1,
                    style: context.titleSmall.copyWith(
                        fontSize: 14.0, color: Theme.of(context).hintColor),
                    overflow: TextOverflow.ellipsis,
                  )
                ].expand((e) => [e, const SizedBox(height: 2)]).toList()
                  ..removeLast(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
