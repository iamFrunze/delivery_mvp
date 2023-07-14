import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'gen/colors.gen.dart';
import 'ui/widgets/shimmer_placeholder_widget.dart';
import 'utils/app_router.dart';
import 'utils/app_settings.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required this.appRouter,
  });

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppSettings>(
      create: (_) => AppSettings(),
      child: AppConsumer(appRouter: appRouter),
    );
  }
}

class AppConsumer extends StatelessWidget {
  const AppConsumer({
    super.key,
    required this.appRouter,
  });

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    final AppSettings provider = context.read<AppSettings>();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: ColorName.primary,
      ),
    );

    return MaterialApp.router(
      theme: provider.theme,
      routerConfig: appRouter.config(),
      builder: (BuildContext context, Widget? widget) {
        final Widget child = widget ?? const ShimmerPlaceholderWidget();

        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark.copyWith(
            systemNavigationBarColor: ColorName.primary,
          ),
          child: SafeArea(child: child),
        );
      },
    );
  }
}
