import 'package:delivery_mvp/app.dart';
import 'package:delivery_mvp/utils/app_router.dart';
import 'package:flutter/cupertino.dart';

void main() {
  final appRouter = AppRouter();

  runApp(
    App(
      appRouter: appRouter,
    ),
  );
}
