import 'package:flutter/material.dart';

import 'utils/app_router.dart';

class App extends StatelessWidget {
  final AppRouter appRouter;

  const App({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
