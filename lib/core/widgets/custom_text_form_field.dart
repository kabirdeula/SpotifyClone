import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants/constants.dart';

/// A customizable `TextFormField` widget for consistent styling and functionality.
///
/// This widget allows for a variety of configurations, such as autofocus,
/// obscuring text (e.g., for passwords), autocorrect, and custom error handling.
///
/// Example usage:
/// ```dart
/// const CustomTextFormField(
///   controller: myController,
///   hintText: 'Enter your name',
///   isObscureText: true,
///   validator: (value) => value!.isEmpty ? 'Field cannot be empty' : null,
///   )
/// ```
class CustomTextFormField extends StatefulWidget {
  /// Controls the text being edited.
  final TextEditingController controller;

  /// The focus node for the text field.
  final FocusNode? focusNode;

  /// The placeholder text displayed when the field is empty.
  final String? hintText;

  /// A widget displayed at the end of the text field.
  final Widget? suffixIcon;

  /// The type of input expected (e.g., text, number, email, etc.).
  final TextInputType? keyboardType;

  /// The action button to show on the keyboard (e.g., done, next, etc.).
  final TextInputAction? textInputAction;

  /// The style of the text inside the field.
  final TextStyle? textStyle;

  /// Whether the field should automatically gain focus.
  final bool isAutofocus;

  /// Whether the text should be obscured (e.g., for passwords).
  final bool isObscureText;

  /// Whether autocorrection is enabled.
  final bool isAutocorrect;

  final void Function(String)? onChanged;

  /// Called when the user completes editing.
  final void Function()? onEditingComplete;

  /// A function to validate the input.
  final String? Function(String?)? validator;

  /// The width of the cursor.
  final double cursorWidth;

  /// The height of the cursor.
  final double cursorHeight;

  /// The color of the cursor.
  final Color cursorColor;

  /// The color of the error text.
  final Color errorColor;

  /// Whether text selection is enabled.
  final bool isEnabledSelection;

  /// A list of auto-fill hints to help the user.
  final Iterable<String>? autoFillHints;

  /// Controls the validation behavior (e.g., disabled, always, onUserInteraction)
  final AutovalidateMode autovalidateMode;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.focusNode,
    this.hintText,
    this.suffixIcon,
    this.keyboardType,
    this.textInputAction,
    this.textStyle,
    this.isAutofocus = false,
    this.isObscureText = false,
    this.isAutocorrect = false,
    this.onChanged,
    this.onEditingComplete,
    this.validator,
    this.cursorWidth = 2.0,
    this.cursorHeight = 20.0,
    this.cursorColor = AppColors.primary,
    this.errorColor = AppColors.error,
    this.isEnabledSelection = true,
    this.autoFillHints,
    this.autovalidateMode = AutovalidateMode.disabled,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isTextObscured;

  @override
  void initState() {
    super.initState();
    isTextObscured = widget.isObscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
          hintText: widget.hintText, suffixIcon: _buildSuffixIcon()),
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      style: widget.textStyle,
      autofocus: widget.isAutofocus,
      obscureText: isTextObscured,
      autocorrect: widget.isAutocorrect,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      validator: widget.validator,
      cursorWidth: widget.cursorWidth,
      cursorHeight: widget.cursorHeight,
      cursorColor: widget.cursorColor,
      cursorErrorColor: widget.errorColor,
      enableInteractiveSelection: widget.isEnabledSelection,
      selectionControls: MaterialTextSelectionControls(),
      autofillHints: widget.autoFillHints,
      autovalidateMode: widget.autovalidateMode,
    );
  }

  Widget? _buildSuffixIcon() {
    if (widget.isObscureText) {
      return IconButton(
        onPressed: () {
          setState(() {
            isTextObscured = !isTextObscured;
          });
        },
        icon: Icon(
          isTextObscured ? Icons.visibility_off : Icons.visibility,
        ),
      );
    }
    return null;
  }
}
