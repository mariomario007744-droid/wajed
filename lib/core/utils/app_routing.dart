import 'package:go_router/go_router.dart';
import 'package:wajed/features/authentication/presentation/views/create_acount_view.dart';
import 'package:wajed/features/authentication/presentation/views/get_started_view.dart';
import 'package:wajed/features/onboarding/presentation/views/onboarding_second_view.dart';
import 'package:wajed/features/onboarding/presentation/views/onboarding_third_view.dart';
import 'package:wajed/features/splash_view/presentation/views/splash_view.dart';
import 'package:wajed/features/onboarding/presentation/views/onboarding_first_view.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(
        path: OnboardingFirstView.routeName,
        builder: (context, state) => OnboardingFirstView(),
      ),
      GoRoute(
        path: OnboardingSecondView.routeName,
        builder: (context, state) => OnboardingSecondView(),
      ),
      GoRoute(
        path: OnboardingThirdView.routeName,
        builder: (context, state) => OnboardingThirdView(),
      ),
      GoRoute(
        path: GetStartedView.routeName,
        builder: (context, state) => GetStartedView(),
      ),
            GoRoute(
        path: CreateAcountView.routeName,
        builder: (context, state) => CreateAcountView(),
      ),
    ],
  );
}
