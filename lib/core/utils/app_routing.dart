import 'package:go_router/go_router.dart';
import 'package:wajed/features/authentication/presentation/views/add_location_view.dart';
import 'package:wajed/features/authentication/presentation/views/confirm_otp_code_view.dart';
import 'package:wajed/features/authentication/presentation/views/create_account_view.dart';
import 'package:wajed/features/authentication/presentation/views/get_started_view.dart';
import 'package:wajed/features/authentication/presentation/views/log_in_view.dart';
import 'package:wajed/features/main_layout_navigation/presentation/views/main_layout_view.dart';
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
        path: CreateAccountView.routeName,
        builder: (context, state) => CreateAccountView(),
      ),
      GoRoute(
        path: AddLocationView.routeName,
        builder: (context, state) => AddLocationView(),
      ),
      GoRoute(
        path: LogInView.routeName,
        builder: (context, state) => LogInView(),
      ),
      GoRoute(
        path: ConfirmOTPCodeView.routeName,
        builder: (context, state) => ConfirmOTPCodeView(),
      ),
      GoRoute(
        path: MainLayoutView.routeName,
        builder: (context, state) => MainLayoutView(),
      ),
    ],
  );
}
