import 'package:flutter/material.dart';

import '../res/themes/light_theme.dart';

class AppSettings extends ChangeNotifier {
  ThemeData get theme => LightThemeData().buildTheme();
}
