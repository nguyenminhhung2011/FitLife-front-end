import 'package:flutter_base_clean_architecture/core/components/constant/image_const.dart';
import 'package:flutter_base_clean_architecture/core/components/extensions/string_extensions.dart';
import 'package:flutter_base_clean_architecture/core/components/widgets/category/category_model.dart';
import 'package:flutter_base_clean_architecture/core/config/color_config.dart';

class Constant {
  static DateTime timeNow = DateTime.now();
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
    'I have a health concern related to ____. Can you help me understand this condition better?',
    'I\'ve been experiencing symptoms such as ____. I need guidance from a doctor regarding the cause and treatment options.',
    'I\'m considering a health decision like ____. Can you provide me with information and advice to make the best decision?',
    'I want to learn more about preventive measures for ____. Can you provide me with information on effective preventive measures and relevant knowledge?',
    'I\'m planning to travel to a region with a high risk of ____. Can you advise me on preventive measures and what I should prepare before going?',
    'I want to understand the impact of ____(medication, food, activity, etc.) on my health. Can you help me learn about the effects and provide guidance on safe usage?',
    'I\'m struggling with sleep and want to explore natural methods to improve it. Can you assist me with information and advice on sleep?'
        'I have a family history of ____. I need guidance from a doctor regarding risk factors and preventive measures.',
    'I\'m interested in learning about natural healthcare approaches. Can you provide me with information and advice on maintaining overall health?',
    'I\'d like to have a discussion with a doctor about a long-term personal health plan. Can you help me develop a plan and suggest the next steps?'
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
