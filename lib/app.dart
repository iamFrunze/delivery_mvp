import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

    return MaterialApp.router(
      theme: provider.theme,
      routerConfig: appRouter.config(),
    );
  }
}
