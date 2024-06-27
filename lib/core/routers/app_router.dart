import 'package:event_hub_app/features/on_boarding/presentation/screens/on_boarding.dart';
import 'package:event_hub_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/signin/presentation/screens/sign_in.dart';
import '../../features/auth/signup/presentation/screens/sign_up.dart';

final routers = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const SplashView()),
  GoRoute(path: "/signIn", builder: (context, state) => const SignIn()),
  GoRoute(path: "/signup", builder: (context, state) => const SignUp()),
  GoRoute(path: "/onBoarding", builder: (context, state) => OnBoarding()),
]);
