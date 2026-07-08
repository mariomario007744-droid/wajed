import 'package:go_router/go_router.dart';
import 'package:wajed/features/splash_view/presentation/views/splash_view.dart';
import 'package:wajed/features/onboarding/presentation/views/onboarding_first_view.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: OnboardingFirstView.routeName, builder: (context, state) => OnboardingFirstView())
      ],
  );
}
