import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/auth/auth_helper.dart';
import 'package:iwc/widgets/keyboard_icon.dart';
import 'package:iwc/widgets/keyboard_number.dart';
import 'package:iwc/widgets/pin_text_field.dart';
import 'package:provider/provider.dart';

class SignInPinScreen extends StatefulWidget {
  const SignInPinScreen({Key? key}) : super(key: key);

  @override
  State<SignInPinScreen> createState() => _SignInPinScreenState();
}

class _SignInPinScreenState extends State<SignInPinScreen> {
  List<String> currentPin = ["", "", "", ""];
  int pinIndex = 0;
  final TextEditingController pin1Controller = TextEditingController();
  final TextEditingController pin2Controller = TextEditingController();
  final TextEditingController pin3Controller = TextEditingController();
  final TextEditingController pin4Controller = TextEditingController();

  clearPin() {
    if (pinIndex == 0) {
      pinIndex = 0;
    } else if (pinIndex == 4) {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    } else {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    }
  }

  pinIndexSetup(String text) {
    if (pinIndex == 0) {
      pinIndex = 1;
    } else if (pinIndex < 4) {
      pinIndex++;
    }

    setPin(pinIndex, text);
    currentPin[pinIndex - 1] = text;
    String strPin = "";
    for (var element in currentPin) {
      strPin += element;
    }
    if (pinIndex == 4) {
      print(strPin);
    }
  }

  setPin(int n, String text) {
    switch (n) {
      case 1:
        pin1Controller.text = text;
        break;

      case 2:
        pin2Controller.text = text;
        break;

      case 3:
        pin3Controller.text = text;
        break;

      case 4:
        pin4Controller.text = text;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Provider.of<AuthHelper>(context, listen: false).title(
                title: "Enter Pin",
                size: 30,
              ),
              Text(
                "Enter Your Pin Code",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ConstantColors.fontColor,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PinTextField(
                    textEditingController: pin1Controller,
                  ),
                  const SizedBox(width: 7),
                  PinTextField(
                    textEditingController: pin2Controller,
                  ),
                  const SizedBox(width: 7),
                  PinTextField(
                    textEditingController: pin3Controller,
                  ),
                  const SizedBox(width: 7),
                  PinTextField(
                    textEditingController: pin4Controller,
                  ),
                ],
              ),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: 1,
                    onPressed: () {
                      pinIndexSetup('1');
                    },
                  ),
                  KeyboardNumber(
                    n: 2,
                    onPressed: () {
                      pinIndexSetup('2');
                    },
                  ),
                  KeyboardNumber(
                    n: 3,
                    onPressed: () {
                      pinIndexSetup('3');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: 4,
                    onPressed: () {
                      pinIndexSetup('4');
                    },
                  ),
                  KeyboardNumber(
                    n: 5,
                    onPressed: () {
                      pinIndexSetup('5');
                    },
                  ),
                  KeyboardNumber(
                    n: 6,
                    onPressed: () {
                      pinIndexSetup('6');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardNumber(
                    n: 7,
                    onPressed: () {
                      pinIndexSetup('7');
                    },
                  ),
                  KeyboardNumber(
                    n: 8,
                    onPressed: () {
                      pinIndexSetup('8');
                    },
                  ),
                  KeyboardNumber(
                    n: 9,
                    onPressed: () {
                      pinIndexSetup('9');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  KeyboardIcon(
                    icons: Icons.backspace,
                    onPressed: () {
                      clearPin();
                    },
                  ),
                  KeyboardNumber(
                    n: 0,
                    onPressed: () {
                      pinIndexSetup('0');
                    },
                  ),
                  KeyboardIcon(
                    icons: Icons.arrow_forward,
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, homeRoute, (route) => false);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
