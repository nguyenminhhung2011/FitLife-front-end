// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `update`
  String get update {
    return Intl.message(
      'update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `See more`
  String get seeMore {
    return Intl.message(
      'See more',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `Sort By`
  String get sortBy {
    return Intl.message(
      'Sort By',
      name: 'sortBy',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message(
      'Languages',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `Currencies`
  String get currencies {
    return Intl.message(
      'Currencies',
      name: 'currencies',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get appearance {
    return Intl.message(
      'Appearance',
      name: 'appearance',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message(
      'Log in',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Dark theme`
  String get darkTheme {
    return Intl.message(
      'Dark theme',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Light theme`
  String get lightTheme {
    return Intl.message(
      'Light theme',
      name: 'lightTheme',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Code and fingerprint`
  String get codeAndFingerPrints {
    return Intl.message(
      'Code and fingerprint',
      name: 'codeAndFingerPrints',
      desc: '',
      args: [],
    );
  }

  /// `Lock and Security`
  String get lockAndSecurity {
    return Intl.message(
      'Lock and Security',
      name: 'lockAndSecurity',
      desc: '',
      args: [],
    );
  }

  /// `General settings`
  String get generalSettings {
    return Intl.message(
      'General settings',
      name: 'generalSettings',
      desc: '',
      args: [],
    );
  }

  /// `By Price`
  String get byPrice {
    return Intl.message(
      'By Price',
      name: 'byPrice',
      desc: '',
      args: [],
    );
  }

  /// `Enter code`
  String get enterCode {
    return Intl.message(
      'Enter code',
      name: 'enterCode',
      desc: '',
      args: [],
    );
  }

  /// `Error code`
  String get errorCode {
    return Intl.message(
      'Error code',
      name: 'errorCode',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password`
  String get forGotPassword {
    return Intl.message(
      'Forgot your password',
      name: 'forGotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Or continue with`
  String get orContinue {
    return Intl.message(
      'Or continue with',
      name: 'orContinue',
      desc: '',
      args: [],
    );
  }

  /// `I'm just starting out with my fitness journey and would like a suitable workout plan based on my goals and fitness level. Can you help me create an effective fitness routine?`
  String get prompt1 {
    return Intl.message(
      'I\'m just starting out with my fitness journey and would like a suitable workout plan based on my goals and fitness level. Can you help me create an effective fitness routine?',
      name: 'prompt1',
      desc: '',
      args: [],
    );
  }

  /// `I want to lose weight and improve my overall health. Can you provide guidance on the appropriate diet and exercise schedule to help me achieve this?`
  String get prompt2 {
    return Intl.message(
      'I want to lose weight and improve my overall health. Can you provide guidance on the appropriate diet and exercise schedule to help me achieve this?',
      name: 'prompt2',
      desc: '',
      args: [],
    );
  }

  /// `I'm having trouble performing a specific exercise and want to ensure that I'm using the correct technique. Can you guide me on the proper form and how to correct any mistakes?`
  String get prompt3 {
    return Intl.message(
      'I\'m having trouble performing a specific exercise and want to ensure that I\'m using the correct technique. Can you guide me on the proper form and how to correct any mistakes?',
      name: 'prompt3',
      desc: '',
      args: [],
    );
  }

  /// `I'm looking to increase my strength and muscle tone. Can you recommend effective exercises and methods for muscle building?`
  String get prompt4 {
    return Intl.message(
      'I\'m looking to increase my strength and muscle tone. Can you recommend effective exercises and methods for muscle building?',
      name: 'prompt4',
      desc: '',
      args: [],
    );
  }

  /// `I'm planning to participate in a fitness competition and need a tailored workout and nutrition plan to prepare for it. Can you assist me in developing a plan and provide in-depth advice?`
  String get prompt5 {
    return Intl.message(
      'I\'m planning to participate in a fitness competition and need a tailored workout and nutrition plan to prepare for it. Can you assist me in developing a plan and provide in-depth advice?',
      name: 'prompt5',
      desc: '',
      args: [],
    );
  }

  /// `I've experienced an injury during my training and would like to know how to recover quickly and safely. Can you guide me on recovery methods and injury treatment?`
  String get prompt6 {
    return Intl.message(
      'I\'ve experienced an injury during my training and would like to know how to recover quickly and safely. Can you guide me on recovery methods and injury treatment?',
      name: 'prompt6',
      desc: '',
      args: [],
    );
  }

  /// `I want to improve my cardiovascular endurance and stamina. Can you help me establish an effective cardio workout plan and provide advice on increasing endurance?`
  String get prompt7 {
    return Intl.message(
      'I want to improve my cardiovascular endurance and stamina. Can you help me establish an effective cardio workout plan and provide advice on increasing endurance?',
      name: 'prompt7',
      desc: '',
      args: [],
    );
  }

  /// `I'm interested in exploring new fitness methods such as yoga, pilates, or swimming. Can you provide information and guidance on these techniques?`
  String get prompt8 {
    return Intl.message(
      'I\'m interested in exploring new fitness methods such as yoga, pilates, or swimming. Can you provide information and guidance on these techniques?',
      name: 'prompt8',
      desc: '',
      args: [],
    );
  }

  /// `I want to understand the role of nutrition in achieving my fitness goals. Can you advise me on proper nutrition and a suitable eating plan?`
  String get prompt9 {
    return Intl.message(
      'I want to understand the role of nutrition in achieving my fitness goals. Can you advise me on proper nutrition and a suitable eating plan?',
      name: 'prompt9',
      desc: '',
      args: [],
    );
  }

  /// `I'm feeling demotivated and would like to know how to maintain motivation throughout my fitness journey. Can you provide strategies and advice to help me stay on track and reach my goals?`
  String get prompt10 {
    return Intl.message(
      'I\'m feeling demotivated and would like to know how to maintain motivation throughout my fitness journey. Can you provide strategies and advice to help me stay on track and reach my goals?',
      name: 'prompt10',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
