import 'dart:developer';

import 'package:event_hub_app/core/database/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/services/service_locator.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        sl<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;

    isOnBoardingVisited
        ? delayedNavigate(context, "/signIn")
        : delayedNavigate(context, "/onBoarding");
    super.initState();
    log("${context.widget} :: $isOnBoardingVisited");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        alignment: Alignment.center,
        child: Image.asset("assets/images/splash_img.png", fit: BoxFit.fill),
      ),
    );
  }
}

void delayedNavigate(context, path) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      customReplacementNavigate(context, path);
    },
  );
}
