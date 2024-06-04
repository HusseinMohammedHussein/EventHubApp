import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final routers = GoRouter(
    routes: [GoRoute(path: "/", builder: (context, state) => Container())]);
