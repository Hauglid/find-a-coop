import 'package:flutter/material.dart';

class AInputField extends StatelessWidget {
  AInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.keyboardType,
    this.password = false,
  }) : super(key: key);

  final void Function()? trailingTapped;
  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  final TextEditingController controller;
  final Widget? leading;
  final bool password;
  final String placeholder;
  final Widget? trailing;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(height: 1),
      obscureText: password,
      decoration: InputDecoration(
        hintText: placeholder,
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        filled: true,
        fillColor: Theme.of(context).canvasColor,
        prefixIcon: leading,
        suffixIcon: trailing != null
            ? GestureDetector(
                onTap: trailingTapped,
                child: trailing,
              )
            : null,
        border: circularBorder.copyWith(
          borderSide: BorderSide(color: Theme.of(context).dividerColor),
        ),
        errorBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: Theme.of(context).errorColor),
        ),
        focusedBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: Theme.of(context).dividerColor),
        ),
        enabledBorder: circularBorder.copyWith(
          borderSide: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
    );
  }
}
