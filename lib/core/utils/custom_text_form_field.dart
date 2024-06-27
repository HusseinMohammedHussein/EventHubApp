import 'package:flutter/material.dart';

import 'app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.icon,
      required this.hintText,
      this.isPasswordField = false});

  final TextEditingController controller;
  final String hintText, icon;
  final bool isPasswordField;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool passwordVisible = false;

  @override
  void initState() {
    passwordVisible = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: passwordVisible,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: AppColors.bgGrayColor,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: AppColors.bgGrayColor,
            )),
        hintText: widget.hintText,
        hintStyle: const TextStyle(fontWeight: FontWeight.normal),
        suffixIcon: widget.isPasswordField
            ? IconButton(
                onPressed: () {
                  setState(
                    () {
                      passwordVisible = !passwordVisible;
                    },
                  );
                },
                icon: Icon(
                    passwordVisible ? Icons.visibility : Icons.visibility_off))
            : const Offstage(),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset(
            widget.icon,
            height: 20,
            width: 20,
          ),
        ),
      ),
    );
  }
}
