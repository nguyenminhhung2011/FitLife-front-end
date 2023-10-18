import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class ExerciseCategory extends StatelessWidget {
  final String header;
  final String description;
  final String level;
  final String image;
  final int exCountable;
  const ExerciseCategory({
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
        Container(
          width: context.widthDevice * 0.6,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).shadowColor.withOpacity(0.1),
                blurRadius: 5.0,
              )
            ],
            image: DecorationImage(
              // Change here
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
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
                header,
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
