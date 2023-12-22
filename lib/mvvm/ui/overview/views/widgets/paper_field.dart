import 'package:fit_life/mvvm/me/entity/news_health/news_health.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/widgets/fit_life/paper_horizontal_item.dart';

class PaperSliderView extends StatefulWidget {
  final List<NewsHealth> news;
  const PaperSliderView({super.key, required this.news});

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
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.news.length,
        itemBuilder: (_, index) {
          return PaperHorizontalItem(
              isFirstItem: index == 0, news: widget.news[index]);
        },
      ),
    );
  }
}
