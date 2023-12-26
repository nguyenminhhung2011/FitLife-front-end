import 'package:fit_life/core/components/constant/image_const.dart';
import 'package:fit_life/core/components/enum/frequency.dart';
import 'package:fit_life/core/components/extensions/string_extensions.dart';
import 'package:fit_life/core/components/widgets/category/category_model.dart';
import 'package:fit_life/core/config/color_config.dart';
import 'package:fit_life/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
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

  static List<String> modelConstant = [
    "ChatGPT",
    "DALL-E-3\n(Limited access for non-subscribers)",
    "StableDiffusionXL",
    "Claude-instant",
    "Llama-2-70b",
    "GPT-4\n(Limited access for non-subscribers)",
    "Claude-2-100k\n(Limited access for non-subscribers)",
    "Claude-instant-100k\n(Limited access for non-subscribers)"
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

  static List<Frequency> durationConst = [
    Frequency.much,
    Frequency.veryMuch,
    Frequency.average,
    Frequency.little,
    Frequency.notMuch,
  ];

  static Map<String, dynamic> mainChatButton = {
    "All chats": CupertinoIcons.chat_bubble_2_fill,
    "Your bots": CupertinoIcons.app_badge_fill,
    "Api key": Icons.key,
  };

  static Map<String, List<String>> bodyPartLevels = {
    "back": ["Intermediate", "Advanced"],
    "cardio": ["Beginner"],
    "chest": ["Intermediate"],
    "lower arms": ["Beginner", "Intermediate"],
    "lower legs": ["Intermediate", "Advanced"],
    "neck": ["Beginner"],
    "shoulders": ["Intermediate"],
    "upper arms": ["Beginner", "Intermediate"],
    "upper legs": ["Intermediate", "Advanced"],
    "waist": ["Beginner"],
  };

  static Map<String, String> bodyPartDescriptions = {
    "back":
        "Muscles located in the upper and lower back, responsible for posture, stability, and pulling movements.",
    "cardio":
        "Exercises that elevate the heart rate and promote cardiovascular fitness.",
    "chest":
        "Muscles in the front of the upper body, including the pectorals, involved in pushing movements.",
    "lower arms":
        "Muscles in the forearm responsible for wrist and finger movements.",
    "lower legs":
        "Muscles located in the lower leg, including the calves and shins, responsible for walking and running.",
    "neck":
        "Muscles supporting the head and neck, involved in movements like rotation and flexion.",
    "shoulders":
        "Muscles surrounding the shoulder joint, responsible for arm movements and stability.",
    "upper arms":
        "Muscles in the upper arm, including the biceps and triceps, responsible for arm movements.",
    "upper legs":
        "Muscles in the upper leg, including the quadriceps and hamstrings, responsible for walking and running.",
    "waist":
        "Muscles in the abdominal and oblique regions, responsible for core stability and trunk movements."
  };

  static Map<String, dynamic> renderBodyPartImage = {
    "back":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067525/body-part/oyzqzpl36fgbnvjomxaa.webp",
    "cardio":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067524/body-part/zhezkmkonvuszzqedpfr.jpg",
    "chest":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067526/body-part/sgu0dwtxvavraylqlihr.jpg",
    "lower arms":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067525/body-part/w6j6ekcrdwrowrengmsu.webp",
    "lower legs":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067523/body-part/rlytkkli8walfu8bt7tg.jpg",
    "neck":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067523/body-part/qdlvf5rbfukwn7ysooag.webp",
    "shoulders":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067523/body-part/x1qu6kk9yvjt9ezc2ssc.jpg",
    "upper arms":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067524/body-part/llb9br1kvvjd9ygklwho.jpg",
    "upper legs":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067524/body-part/zxcimdvlmynj0kvefcxb.jpg",
    "waist":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703067524/body-part/dvv7l8ztbxlywborioqn.webp",
  };

  static Map<String, dynamic> renderEquipmentImage = {
    "assisted":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057238/fitlife/k3f5l8bpqx74wsid7fgx.webp",
    "band":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057240/fitlife/cdkyhasx8dpxnmgat9h6.png",
    "barbell":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057248/fitlife/pod7rbmlbzilyqdhgafi.png",
    "body weight":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057240/fitlife/bmowvr64p0corvzpv1pu.png",
    "bosu ball":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057241/fitlife/deaqg1sgmcv98yblcidy.jpg",
    "cable":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057241/fitlife/ks4rgfcjsz0jipjmyioi.png",
    "dumbbell":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057243/fitlife/inmgsuxtzvnuecwv5a1k.jpg",
    "elliptical machine":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057243/fitlife/yth8ulzhh6cv3b9kpkk2.png",
    "ez barbell":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057244/fitlife/xi1q8wa00jqbopk4vdqd.webp",
    "hammer":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057245/fitlife/lfvj3fth3cqdfyv3wtja.png",
    "kettlebell":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057246/fitlife/fbavv8vcn8axjwkpyedw.png",
    "leverage machine":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057229/fitlife/drzi3t6mvaitwgqzgzwx.webp",
    "medicine ball":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057229/fitlife/e2kz0wl1op35ny4y7nt1.png",
    "olympic barbell":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057229/fitlife/axmenie13kzzm8pzmkso.png",
    "resistance band":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057240/fitlife/cdkyhasx8dpxnmgat9h6.png",
    "roller":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057232/fitlife/jpkarcpqyt5cu7fnhnyc.png",
    "rope":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057230/fitlife/g98cv1cwkfhoi1fx1kte.jpg",
    "skierg machine":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057230/fitlife/z6bu4ykd3lttk6hytpap.webp",
    "sled machine":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057231/fitlife/r0b9lhhft9jgjdptjnzg.webp",
    "smith machine":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057232/fitlife/ufz7fai8mloldblxz4v3.png",
    "stability ball":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057233/fitlife/ksdvamvgto2eyqei1vc7.png",
    "stationary bike":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057233/fitlife/rnuh5zlh1abllpofdwt6.png",
    "stepmill machine":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057234/fitlife/ultpmo0gbdk2gpmfpkfn.jpg",
    "tire":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057235/fitlife/kaslfim2hveowg4qquib.png",
    "trap bar":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057235/fitlife/aixep84vx8ttrfwvm4pz.png",
    "upper body ergometer":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057236/fitlife/tphayhxoiii9yzmmhggf.png",
    "weighted":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057237/fitlife/db8k23enivtpvmjnomyt.png",
    "wheel roller":
        "https://res.cloudinary.com/ddopvilpr/image/upload/v1703057237/fitlife/pu99a2w0k0bvm3qdltg2.jpg",
  };

  static Map<String, String> equipmentDescriptions = {
    "assisted":
        "Machines or devices that provide support during exercise, reducing strain and resistance.",
    "band":
        "Elastic fitness tool used for strength training and flexibility exercises.",
    "barbell":
        "Long metal bar with weights on each end, used for weightlifting and strength training.",
    "body weight":
        "Exercises that use the individual's body weight as resistance, improving strength and flexibility.",
    "bosu ball":
        "Half-sphere stability device for balance, stability, and core training.",
    "cable":
        "Pulley system with adjustable cable attachments for a wide range of exercises.",
    "dumbbell":
        "Handheld weights for strength training and resistance exercises.",
    "elliptical machine":
        "Stationary exercise machine simulating walking, running, or stair climbing with minimal joint impact.",
    "ez barbell":
        "Curved barbell primarily targeting biceps and triceps during weightlifting exercises.",
    "hammer":
        "Assorted fitness equipment, including machines or hammers used for strength training or functional exercises.",
    "kettlebell":
        "Weighted ball with a handle for swinging, lifting, and pressing exercises.",
    "leverage machine":
        "Machines using a lever or pivot system for specific muscle group targeting.",
    "medicine ball":
        "Weighted ball used for throwing, catching, and twisting movements.",
    "olympic barbell":
        "Heavy-duty weightlifting bar used in Olympic weightlifting and powerlifting.",
    "resistance band":
        "Elastic bands providing resistance for strength training and stretching.",
    "roller":
        "Cylindrical foam or plastic device for self-myofascial release and muscle recovery.",
    "rope":
        "Versatile training tools like battling ropes, jump ropes, or climbing ropes.",
    "skierg machine":
        "Specialized cardio and strength training machine simulating cross-country skiing.",
    "sled machine":
        "Weighted sled for pushing or pulling exercises, targeting the lower body.",
    "smith machine":
        "Guided weightlifting apparatus for exercises like squats and bench presses.",
    "stability ball":
        "Large inflatable ball used for core strength, balance, and stability exercises.",
    "stationary bike":
        "Cardio machine simulating cycling for a low-impact workout.",
    "stepmill machine":
        "Cardio machine simulating climbing stairs for intense cardiovascular exercise.",
    "tire":
        "Large rubber tire used for functional and strength training exercises.",
    "trap bar":
        "Hexagonal or diamond-shaped weightlifting bar for exercises like deadlifts.",
    "upper body ergometer":
        "Cardio machine focusing on the upper body, involving arm pedaling.",
    "weighted":
        "Exercises or equipment incorporating additional weight for increased resistance.",
    "wheel roller":
        "Small fitness tool for core-strengthening exercises like rollouts and planks."
  };

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

  static List<int> calories = [400, 200, 500, 600, 300, 700, 300];

  static final durationList = [
    S.current.many,
    S.current.soMany,
    S.current.medium,
    S.current.aLittle,
    S.current.notMuch,
  ];

  static final frequencyList = [
    S.current.notMuchOrMore,
    S.current.six2SevenMuchOrMore,
    S.current.three2FiveDaysInWeek,
    S.current.twoToThereDaysInWeek,
    S.current.worksEveryDayOfTheWeek,
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
