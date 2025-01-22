import 'package:flutter/material.dart';
import 'package:spotify_clone/core/widgets/widgets.dart';

/// A custom ElevatedButton widget that allows easy reuse with flexible configurations.
///
/// You can customize the color, padding, shape, and action for the ElevatedButton.
///
/// **Usage Example:**
/// ```dart
/// CustomElevatedButton(
///   onPressed: () {},
///   label: 'Click Me',
///   color: AppColors.primary,
/// );
/// ```
///
/// - `onPressed`: A callback function to handle the button's press event.
/// - `label`: The text displayed on the button.
/// - `color`: The background color of the button. If not provided, it defaults to [AppColors.primary].
/// - `padding`: Optional padding around the button's content.
/// - `borderRadius`: The corner radius of the button. Defaults to 8.
class CustomElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final FocusNode? focusNode;
  final String label;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    this.focusNode,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      focusNode: focusNode,
      // child: Text(
      //   label,
      //   style: AppTypography.button(color: Colors.white),
      // ),
      child: AppText(
        text: label,
        appTextStyle: AppTextStyle.button,
      ),
    );
  }
}
