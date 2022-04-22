import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/auth/auth_helper.dart';
import 'package:iwc/widgets/keyboard_icon.dart';
import 'package:provider/provider.dart';

class SignUpUsernameScreen extends StatelessWidget {
  const SignUpUsernameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Provider.of<AuthHelper>(context, listen: false).title(
                  title: "Enter Username",
                  size: 30,
                ),
                const SizedBox(height: 70),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ConstantColors.strokeColor2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      hintStyle: GoogleFonts.poppins(
                        color: ConstantColors.strokeColor2,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Provider.of<AuthHelper>(context, listen: false).title(
                  title: "Continue",
                  size: 25,
                ),
                KeyboardIcon(
                  icons: Icons.arrow_forward,
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      signUpMnemonicRoute,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
