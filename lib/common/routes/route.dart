import 'package:go_router/go_router.dart';
import 'package:hicking/auth/screens/auth_main_screen.dart';
import 'package:hicking/auth/screens/login_screen.dart';

// Splash
import '../../intro/screens/splash_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: AuthMainScreen.routeName,
      name: AuthMainScreen.routeName,
      builder: (context, state) => const AuthMainScreen(),
      routes: [
        GoRoute(
          path: LoginScreen.routeName,
          name: LoginScreen.routeName,
          builder: (context, state) => const LoginScreen(),
        ),
      ],
    ),
  ],
);
