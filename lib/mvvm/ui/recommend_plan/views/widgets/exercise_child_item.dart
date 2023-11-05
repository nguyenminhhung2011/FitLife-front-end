import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class ExerciseChidItem extends StatelessWidget {
  const ExerciseChidItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(ImageConst.banner1,
                width: 100.0, height: 100.0, fit: BoxFit.cover),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Russian workout",
                  style:
                      context.titleSmall.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  "This is description of russian exercise",
                  style: context.titleSmall.copyWith(
                    color: Theme.of(context).hintColor,
                    fontSize: 12.0,
                  ),
                ),
                Wrap(
                  spacing: 5.0,
                  children: ['30 mins', '7 exercises']
                      .map(
                        (e) => Container(
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              border: Border.all(
                                  width: 1,
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Text(
                            e,
                            style: context.titleSmall.copyWith(
                                fontSize: 10.0,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ].expand((e) => [e, const SizedBox(height: 5.0)]).toList()
                ..removeLast(),
            ),
          )
        ],
      ),
    );
  }
}
