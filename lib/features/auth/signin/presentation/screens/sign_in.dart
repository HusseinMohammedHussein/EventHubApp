import 'package:event_hub_app/core/utils/app_colors.dart';
import 'package:event_hub_app/core/utils/app_strings.dart';
import 'package:event_hub_app/core/utils/custom_scaffold.dart';
import 'package:event_hub_app/core/utils/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
  });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("SignUp")
          ],
        ),
      ),
    );
  }
}
