import 'package:flutter/material.dart';
import 'package:fit_life/core/components/widgets/fit_life/paper_horizontal_item.dart';

class PaperSliderView extends StatefulWidget {
  const PaperSliderView({super.key});

  @override
  State<PaperSliderView> createState() => _PaperSliderViewState();
}

class _PaperSliderViewState extends State<PaperSliderView> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ///[Change data here if have data]
    const length = 10;

    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: length,
        itemBuilder: (_, index) {
          return PaperHorizontalItem(isFirstItem: index == 0);
        },
      ),
    );
  }
}
