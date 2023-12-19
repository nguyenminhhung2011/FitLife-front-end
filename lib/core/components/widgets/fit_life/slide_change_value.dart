import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:flutter/material.dart';

class SliderChangeValue extends StatefulWidget {
  final double initValue;
  final double maxValue;
  final String header;
  const SliderChangeValue({
    super.key,
    required this.initValue,
    required this.maxValue,
    required this.header,
  });

  @override
  State<SliderChangeValue> createState() => SliderChangeValueState();
}

class SliderChangeValueState extends State<SliderChangeValue> {
  late double _currentSliderValue = widget.initValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "Change ${widget.header}",
            textAlign: TextAlign.center,
            style: context.titleLarge.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10.0),
        Slider(
          value: _currentSliderValue,
          max: widget.maxValue,
          divisions: 5,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
        const SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ButtonCustom(
            onPress: () => context.popArgs(_currentSliderValue),
            width: double.infinity,
            height: 45.0,
            child: Text(
              S.of(context).update,
              style: context.titleMedium
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
