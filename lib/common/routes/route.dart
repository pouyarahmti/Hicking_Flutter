
import 'package:go_router/go_router.dart';

// Splash
import '../../intro/screens/splash_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(),
    ),
  ],
); 