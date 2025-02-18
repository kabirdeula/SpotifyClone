import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final bool showBackButton;
  final String? title;
  final List<Widget>? actions;
  final bool isTitle;
  final Widget? titleWidget;

  const CustomAppBar({
    super.key,
    this.leading,
    this.showBackButton = false,
    this.title,
    this.actions,
    this.isTitle = true,
    this.titleWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showBackButton ? const BackButton() : leading,
      title: isTitle ? Text(title ?? "") : titleWidget,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
