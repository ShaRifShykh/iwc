import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/auth/auth_helper.dart';
import 'package:iwc/widgets/keyboard_icon.dart';
import 'package:iwc/widgets/main_button.dart';
import 'package:provider/provider.dart';

class SignInMnemonicScreen extends StatefulWidget {
  const SignInMnemonicScreen({Key? key}) : super(key: key);

  @override
  State<SignInMnemonicScreen> createState() => _SignInMnemonicScreenState();
}

class _SignInMnemonicScreenState extends State<SignInMnemonicScreen> {
  final TextEditingController mnemonicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Provider.of<AuthHelper>(context, listen: false).title(
                    title: "Recovery Phrase",
                    size: 30,
                  ),
                  const SizedBox(height: 70),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ConstantColors.strokeColor,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: mnemonicController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Mnemonic",
                        hintStyle: GoogleFonts.poppins(
                          color: ConstantColors.fontColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  MainButton(
                    onTap: () {},
                    text: "Paste",
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
                      Navigator.pushReplacementNamed(context, signInPinRoute);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
