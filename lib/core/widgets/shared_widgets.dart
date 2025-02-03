import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';

import 'widgets.dart';

Widget backgroundImageWidget({required String image}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
    ),
  );
}

Widget semiTransparentOverlay({double opacity = 0.45}) {
  return Container(color: Color.fromRGBO(0, 0, 0, opacity));
}

Widget brandingImage({double scale = 2.2}) {
  return Align(
    alignment: Alignment.topCenter,
    child: Image.asset(AssetPaths.branding, scale: scale),
  );
}

Widget titleWidget({required String title}) {
  return AppText(
    text: title,
    appTextStyle: AppTextStyle.subtitle,
    color: AppColors.label,
  );
}

const Widget smallSpacer = SizedBox(height: 12);
const Widget largeSpacer = SizedBox(height: 24);
const Widget extraLargeSpacer = SizedBox(height: 32);
