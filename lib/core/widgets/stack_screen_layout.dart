import 'package:flutter/material.dart';

import 'widgets.dart';

class StackScreenLayout extends StatelessWidget {
  final String backgroundImage;
  final List<Widget> children;

  const StackScreenLayout({
    super.key,
    required this.backgroundImage,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImageWidget(image: backgroundImage),
          semiTransparentOverlay(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
