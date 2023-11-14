import 'package:flutter/material.dart';
import "package:skeleton_text/skeleton_text.dart";

class SkeletonContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  final BorderRadius borderRadius;

  const SkeletonContainer._({
    this.width = double.infinity,
    this.height = double.infinity,
    this.borderRadius = const BorderRadius.all(Radius.circular(0)),
    super.key,
    this.color,
  });

  const SkeletonContainer.square({
    required double width,
    required double height,
  }) : this._(width: width, height: height);

  const SkeletonContainer.rounded({
    required double width,
    required double height,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(12)),
  }) : this._(width: width, height: height, borderRadius: borderRadius);

  const SkeletonContainer.circular({
    required double width,
    required double height,
    BorderRadius borderRadius = const BorderRadius.all(Radius.circular(80)),
    Color? color,
  }) : this._(
          width: width,
          height: height,
          borderRadius: borderRadius,
          color: color,
        );

  @override
  Widget build(BuildContext context) => SkeletonAnimation(
        borderRadius: borderRadius,
        //gradientColor: Colors.orange,
        //shimmerColor: Colors.red,
        //curve: Curves.easeInQuad,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color ?? Theme.of(context).dividerColor.withOpacity(0.05),
            borderRadius: borderRadius,
          ),
        ),
      );
}
