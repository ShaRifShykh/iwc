import 'package:flutter/material.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/values/path.dart';
import 'package:iwc/widgets/main_button.dart';
import 'package:iwc/widgets/stroke_button.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Path.onBoardImg,
            ),
            const SizedBox(height: 80),
            StrokeButton(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  signUpPinRoute,
                  (route) => false,
                );
              },
              text: "Create Wallet",
            ),
            const SizedBox(height: 20),
            MainButton(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  signInMnemonicRoute,
                  (route) => false,
                );
              },
              text: "Import Wallet",
            )
          ],
        ),
      ),
    );
  }
}
