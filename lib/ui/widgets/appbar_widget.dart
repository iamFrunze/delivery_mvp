import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    this.bottomWidget,
    this.leading,
    this.actions,
  });

  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottomWidget;

  @override
  Size get preferredSize => Size.fromHeight(
        kToolbarHeight +
            (bottomWidget != null ? bottomWidget!.preferredSize.height : 0),
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading,
      leadingWidth: 80,
      centerTitle: true,
      title: Text(title),
      actions: actions,
      bottom: bottomWidget,
    );
  }
}
