import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/extensions/string_extensions.dart';
import 'package:fit_life/core/components/widgets/category/category_model.dart';
import 'package:fit_life/core/config/color_config.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:flutter/material.dart';

class Constant {
  static DateTime timeNow = DateTime.now();

  static List<Map<String, dynamic>> icons = [
    {
      'icon': '🛒',
      'color': Colors.blue,
    },
    {
      'icon': '🍉',
      'color': Colors.red,
    },
    {
      'icon': '🏥',
      'color': "#07AEAF".toColor(),
    },
    {
      'icon': '👪',
      'color': Colors.yellow,
    },
  ];
  static List<String> boardNumber = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'Exit',
    '0',
    '🗑️'
  ];

  static List<MainPageViewIntro> listViewIntro = [
    MainPageViewIntro(
      gifPath: ImageConst.intro1,
      mainTitle: 'Track Your Goal',
      title:
          'Don\'t worry if you have trouble determining your goals. We can help you determine your goals and track your goals',
    ),
    MainPageViewIntro(
      gifPath: ImageConst.intro2,
      mainTitle: 'Get Burn',
      title:
          'Let\'s keep burning, to achive yours goals, it hurts only temporaily, if you give up now you will be in pain forever',
    ),
    MainPageViewIntro(
      gifPath: ImageConst.intro3,
      mainTitle: 'Eat Well',
      title:
          'Let\'t start a healthy lifestyle with us, we can determine your diet every day, healthy eating is fun',
    ),
  ];

  static List<BannerContent> listContent = [
    BannerContent(
      imageUrl: ImageConst.banner2,
      content: 'Find Balance and Strength: Yoga for Mind-Body Wellness',
      subContent:
          'Align your mind and body through the practice of yoga, enhancing flexibility, promoting relaxation, and fostering a sense of inner peace for overall well-being.',
    ),
    BannerContent(
      imageUrl: ImageConst.banner3,
      content: 'Pedal to Fitness: Energize Your Body with Cycling.',
      subContent:
          'Revitalize your fitness routine with high-energy cycling workouts that boost cardiovascular health, burn calories, and sculpt your muscles for a stronger, fitter you.',
    ),
    BannerContent(
      imageUrl: ImageConst.banner1,
      content: 'Unlock Your Potential: Power Up Your Fitness Journey.',
      subContent:
          'Unleash your true potential with dynamic fitness workouts that improve strength, endurance, and overall fitness levels, empowering you to achieve your goals and live a healthier, more vibrant life.',
    ),
  ];

  static List<String> prompts = [
    S.current.prompt1,
    S.current.prompt2,
    S.current.prompt3,
    S.current.prompt4,
    S.current.prompt5,
    S.current.prompt6,
    S.current.prompt7,
    S.current.prompt8,
    S.current.prompt9,
    S.current.prompt10,
  ];

  static List<CategoryModel> listCategory = <CategoryModel>[
    CategoryModel(
      iconSize: 20,
      title: ' Relaxation',
      iconUrl: ImageConst.relaxIcon,
      color: CommonColor.relaxationColor.toColor(),
      isIconData: false,
    ),
    CategoryModel(
      iconSize: 20,
      title: ' Meditation',
      iconUrl: ImageConst.meditationIcon,
      color: CommonColor.meditationColor.toColor(),
      isIconData: false,
    ),
    CategoryModel(
      iconSize: 20,
      title: ' Beathing',
      iconUrl: ImageConst.beathingIcon,
      color: CommonColor.beathingColor.toColor(),
      isIconData: false,
    ),
    CategoryModel(
      iconSize: 20,
      title: ' Yoga',
      iconUrl: ImageConst.yogaIcon,
      color: CommonColor.yogaColor.toColor(),
      isIconData: false,
    ),
  ];
}

class MainPageViewIntro {
  final String gifPath;
  final String mainTitle;
  final String title;
  MainPageViewIntro({
    required this.gifPath,
    required this.mainTitle,
    required this.title,
  });
}

class BannerContent {
  final String imageUrl;
  final String content;
  final String subContent;
  BannerContent({
    required this.imageUrl,
    required this.content,
    required this.subContent,
  });
}
