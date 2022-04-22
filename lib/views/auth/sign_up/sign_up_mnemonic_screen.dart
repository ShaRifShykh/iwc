import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/auth/auth_helper.dart';
import 'package:iwc/widgets/keyboard_icon.dart';
import 'package:iwc/widgets/main_button.dart';
import 'package:provider/provider.dart';

class SignUpMnemonicScreen extends StatefulWidget {
  const SignUpMnemonicScreen({Key? key}) : super(key: key);

  @override
  State<SignUpMnemonicScreen> createState() => _SignUpMnemonicScreenState();
}

class _SignUpMnemonicScreenState extends State<SignUpMnemonicScreen> {
  final TextEditingController mnemonicController = TextEditingController();

  @override
  void initState() {
    super.initState();

    mnemonicController.text =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry";
  }

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
                    title: "Mnemonics",
                    size: 30,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Do Not Share Your Mnemonics. Please keep these Mnemonics in a safe place to safeguard from any intruder attack.",
                    style: GoogleFonts.poppins(
                      color: ConstantColors.fontColor2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "* If you lose your Mnemonics phrase, your wallet cannot be recovered.",
                    style: GoogleFonts.poppins(
                      color: ConstantColors.redColor,
                    ),
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
                      readOnly: true,
                      controller: mnemonicController,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  MainButton(
                    onTap: () {},
                    text: "Copy",
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
                      Navigator.pushNamedAndRemoveUntil(
                          context, homeRoute, (route) => false);
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
