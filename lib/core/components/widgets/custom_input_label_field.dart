import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomInputLabelField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool isObscure;
  final String? hintText;
  final String? Function(String? input)? onValidator;
  final int? lines;

  const CustomInputLabelField({
    super.key,
    required this.label,
    required this.controller,
    this.hintText,
    this.isObscure = false,
    this.onValidator,
    this.lines,
  });

  @override
  State<CustomInputLabelField> createState() => _CustomInputLabelFieldState();
}

class _CustomInputLabelFieldState extends State<CustomInputLabelField> {
  bool _showCancelIconInState = true;

  void tapShowHideText() {
    setState(() {
      _showCancelIconInState = !_showCancelIconInState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label.isNotEmpty)
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 12.0),
            child: Text(
              widget.label,
              style: context.textTheme.titleLarge,
            ),
          ),
        TextFormField(
          maxLines: widget.lines ?? 1,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: context.titleMedium.copyWith(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).hintColor,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).hintColor),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            suffixIcon: widget.isObscure
                ? GestureDetector(
                    onTap: tapShowHideText,
                    child: _showCancelIconInState
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  )
                : null,
          ),
          autovalidateMode: AutovalidateMode.always,
          controller: widget.controller,
          obscureText: widget.isObscure && _showCancelIconInState,
          validator: widget.onValidator,
        ),
      ],
    );
  }
}
