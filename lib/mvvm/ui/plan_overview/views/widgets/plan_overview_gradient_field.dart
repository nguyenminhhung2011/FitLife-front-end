import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/context_extensions.dart';

class PlanOverViewGradientField extends StatelessWidget {
  const PlanOverViewGradientField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: LinearGradient(
          colors: [Colors.grey.withOpacity(0.5), Colors.grey.withOpacity(0.5)],
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your goal',
                      style: context.titleSmall
                          .copyWith(color: Colors.white, fontSize: 12.0),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Getting back in shape',
                      style: context.titleMedium.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios_sharp,
                    color: Colors.white, size: 15.0),
              )
            ],
          ),
          const Divider(color: Colors.grey, thickness: 1),
          Row(
            children: [
              ...['2320', '280', '7.5'].mapIndexed(
                (index, e) => Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.toString(),
                        style: context.titleLarge.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        switch (index) {
                          0 => 'Daily steps',
                          1 => 'burned kCal',
                          _ => 'hours slept'
                        },
                        style: context.titleSmall.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
