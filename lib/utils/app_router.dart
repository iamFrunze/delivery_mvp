import 'package:auto_route/auto_route.dart';
import 'package:delivery_mvp/utils/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: SplashRoute.page,
          path: '/splash',
        ),
      ];
}
