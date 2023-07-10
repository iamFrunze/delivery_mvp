import 'package:flutter/cupertino.dart';

import 'app.dart';
import 'utils/app_router.dart';

void main() {
  final appRouter = AppRouter();

  runApp(
    App(
      appRouter: appRouter,
    ),
  );
}
