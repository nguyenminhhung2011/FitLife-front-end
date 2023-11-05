import 'package:fit_life/app_coordinator.dart';
import 'package:fit_life/core/components/constant/constant.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:fit_life/core/components/widgets/button_custom.dart';
import 'package:fit_life/core/components/widgets/fit_life/render_app_bar.dart';
import 'package:fit_life/routes/routes.dart';
import 'package:flutter/material.dart';

class IntroductionView extends StatefulWidget {
  const IntroductionView({super.key});

  @override
  State<IntroductionView> createState() => _IntroductionViewState();
}

class _IntroductionViewState extends State<IntroductionView> {
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);

  PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  void onButtonTape(int index) {
    pageController.animateToPage(index,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const RenderAppBar(),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: context.heightDevice * 0.45,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                _currentPage.value = index;
              },
              itemCount: 3,
              itemBuilder: (context, index) =>
                  Image.asset(Constant.listViewIntro[index].gifPath),
            ),
          ),
          const SizedBox(height: 10.0),
          ValueListenableBuilder<int>(
              valueListenable: _currentPage,
              builder: (_, currentPage, __) {
                final currentView = Constant.listViewIntro[currentPage];
                return Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            for (int index = 0; index < 3; index++)
                              dotAnimated(currentPage == index)
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          currentView.mainTitle,
                          textAlign: TextAlign.center,
                          style: context.titleLarge
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            currentView.title,
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: context.titleSmall.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        ButtonCustom(
                          width: 180.0,
                          radius: 10.0,
                          onPress: () {
                            if (currentPage >= 2) {
                              context.openListPageWithRoute(Routes.signIn);
                            } else {
                              int newIndex = currentPage + 1;
                              onButtonTape(newIndex);
                              _currentPage.value = newIndex;
                            }
                          },
                          child: Text(
                            "Continue",
                            style: context.titleSmall.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skip for no",
                            style: context.titleSmall.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                        ),
                      ]),
                );
              }),
        ],
      ),
    );
  }

  Widget dotAnimated(bool isSelect) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      width: isSelect ? 10.0 : 6.0,
      height: isSelect ? 10.0 : 6.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelect ? Theme.of(context).primaryColor : Colors.grey,
      ),
    );
  }
}
