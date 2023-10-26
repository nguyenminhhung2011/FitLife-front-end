import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter_svg/svg.dart';

class FeelingField extends StatefulWidget {
  const FeelingField({
    super.key,
    required Color primaryColor,
  }) : _primaryColor = primaryColor;

  final Color _primaryColor;

  @override
  State<FeelingField> createState() => _FeelingFieldState();
}

class _FeelingFieldState extends State<FeelingField> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: true);
  }

  String renderContent(int index) =>
      switch (index) { 0 => ' Love', 1 => ' Cool', 2 => ' Happy', _ => ' Sad' };

  void onButtonTape(int index) {
    _pageController.animateToPage(index,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: PageView(
        controller: _pageController,
        children: [_chosenView(context), _recommendView(context)],
      ),
    );
  }

  Widget _recommendView(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Recommend exercise',
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.w600),
                ),
                ...[
                  '💪 4  Exercises',
                  '⌚ 10 Hours training',
                  '📖 10 health paper'
                ].map(
                  (e) => Expanded(
                    child: Text(e,
                        style: context.titleSmall.copyWith(fontSize: 13.0)),
                  ),
                ),
              ].expand((e) => [e, const SizedBox(height: 5)]).toList(),
            ),
          ),
          Expanded(
            flex: 2,
            child: Hero(
              tag: ImageConst.coolIcon,
              child:
                  SvgPicture.asset(ImageConst.coolIcon, height: 55, width: 55),
            ),
          )
        ],
      ),
    );
  }

  Padding _chosenView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          ...[
            ImageConst.loveIcon,
            ImageConst.coolIcon,
            ImageConst.happyIcon,
            ImageConst.sadIcon,
          ].mapIndexed(
            (index, e) => Expanded(
              child: Hero(
                tag: e,
                child: _feelingItem(context,
                    url: e, content: renderContent(index)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector _feelingItem(BuildContext context,
      {required String url, required String content}) {
    return GestureDetector(
      onTap: () => onButtonTape(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget._primaryColor.withOpacity(0.2),
            ),
            child: SvgPicture.asset(url),
          ),
          const SizedBox(height: 5.0),
          Text(content, style: context.titleSmall)
        ],
      ),
    );
  }
}
