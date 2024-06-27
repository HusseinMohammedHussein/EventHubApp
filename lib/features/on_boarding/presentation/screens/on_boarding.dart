import 'package:animated_introduction/animated_introduction.dart';
import 'package:event_hub_app/core/database/cache_helper.dart';
import 'package:event_hub_app/core/functions/navigation.dart';
import 'package:event_hub_app/core/services/service_locator.dart';
import 'package:event_hub_app/core/utils/app_strings.dart';
import 'package:event_hub_app/features/on_boarding/presentation/functions/on_boarding.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});

  final List<SingleIntroScreen> pages = [
    SingleIntroScreen(
      title: AppStrings.firstOnBoardingTitle,
      description: AppStrings.onBoardingDesc,
      imageAsset: 'assets/images/first_on_boarding_asset.png',
    ),
    SingleIntroScreen(
      title: AppStrings.secondOnBoardingTitle,
      description: AppStrings.onBoardingDesc,
      imageAsset: 'assets/images/second_on_boarding_asset.png',
    ),
    SingleIntroScreen(
      title: AppStrings.threadOnBoardingTitle,
      description: AppStrings.onBoardingDesc,
      imageAsset: 'assets/images/thread_on_boarding_asset.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: AnimatedIntroduction(
        doneText: "Next",
        slides: pages,
        onSkip: () {
          sl<CacheHelper>().saveData(key: "isOnBoardingVisited", value: false);
          customReplacementNavigate(context, "/signIn");
        },
        onDone: () {
          onBoardingVisited();
          customReplacementNavigate(context, "/signIn");
        },
      ),
    ));
  }
}
