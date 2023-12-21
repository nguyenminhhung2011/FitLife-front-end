import 'package:fit_life/core/components/extensions/string_extensions.dart';
import 'package:fit_life/core/components/widgets/image_custom.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';

class BodyPartWidget extends StatelessWidget {
  final String header;
  final String description;
  final String level;
  final String image;
  final int exCountable;
  const BodyPartWidget({
    super.key,
    required this.header,
    required this.description,
    required this.exCountable,
    required this.level,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: ImageCustom(
            width: context.widthDevice * 0.6,
            height: double.infinity,
            imageUrl: image,
            isNetworkImage: true,
            radius: 10.0,
          ),
        ),
        Container(
          width: context.widthDevice * 0.6,
          height: double.infinity,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.black45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                header.upCaseFirstCharacter,
                style: context.titleMedium.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ...[
                description,
                '$exCountable workout programs',
              ].map(
                (e) => Text(
                  e,
                  style: context.titleSmall.copyWith(
                    color: Colors.white,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                level,
                style: context.titleSmall.copyWith(
                  fontSize: 10.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
