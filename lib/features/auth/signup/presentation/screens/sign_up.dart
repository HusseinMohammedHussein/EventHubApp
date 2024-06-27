import 'package:flutter/material.dart';

import '../../../../../core/utils/custom_scaffold.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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