import 'package:event_hub_app/core/routers/app_router.dart';
import 'package:flutter/material.dart';

class EventHubApp extends StatelessWidget {
  const EventHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routers,
    );
  }
}
