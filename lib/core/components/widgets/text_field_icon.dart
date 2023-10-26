import 'package:flutter/material.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';

class TextFieldWithIconWidget extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final TextEditingController controller;
  const TextFieldWithIconWidget({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: context.primaryColor),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: context.primaryColor,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              controller: controller,
              style: const TextStyle(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w400),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
