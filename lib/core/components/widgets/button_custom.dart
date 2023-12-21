import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final Color? color;
  final double? radius;
  final double? width;
  final double? height;
  final Widget child;
  final Function() onPress;
  final EdgeInsetsGeometry? padding;
  final bool enableWidth;
  final bool loading;
  final Color? borderColor;
  const ButtonCustom({
    super.key,
    this.color,
    this.radius,
    this.width,
    this.height,
    this.padding,
    this.enableWidth = true,
    this.loading = false,
    this.borderColor,
    required this.child,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: enableWidth ? width ?? double.infinity : null,
      height: height,
      child: ElevatedButton(
        onPressed: loading ? null : onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            color ?? context.primaryColor,
          ),
          padding: padding != null
              ? MaterialStateProperty.all<EdgeInsetsGeometry>(padding!)
              : null,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius ?? 10.0),
              ),
              side: BorderSide(
                  color: borderColor ?? color ?? context.primaryColor),
            ),
          ),
        ),
        child: loading
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.white,
              ))
            : child,
      ),
    );
  }
}
