import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
        ),
        AutoRoute(
          page: SplashRoute.page,
          path: '/splash',
        ),
        AutoRoute(
          page: OnboardingRoute.page,
          path: '/onboarding',
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: '/',
        ),
      ];
}
