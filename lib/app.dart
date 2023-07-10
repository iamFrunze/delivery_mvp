import 'package:delivery_mvp/utils/app_router.dart';
import 'package:flutter/material.dart';

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
