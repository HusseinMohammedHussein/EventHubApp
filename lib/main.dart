import 'package:event_hub_app/core/database/cache_helper.dart';
import 'package:event_hub_app/event_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  setupServiceLocator();
  await sl<CacheHelper>().init();

  runApp(const EventHubApp());
}
