import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class PtItemView extends StatelessWidget {
  const PtItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.asset(ImageConst.banner1,
                width: 50.0, height: 50.0, fit: BoxFit.cover),
          ),
          const SizedBox(width: 15.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "PT ChatGPT",
                        style: context.titleMedium
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '144 followers',
                      style: context.titleSmall
                          .copyWith(color: Theme.of(context).hintColor),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Text(
                  "This is description of PT chat bot,This is description of PT chat botThis is description of PT chat botThis is description of PT chat botThis is description of PT chat bot",
                  style: context.titleSmall.copyWith(
                      color: Theme.of(context).hintColor, fontSize: 14.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
