import 'package:flutter/material.dart';
import 'package:iwc/values/constant_colors.dart';

class PinTextField extends StatelessWidget {
  const PinTextField({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          border: Border.all(
            color: ConstantColors.black,
          ),
          shape: BoxShape.circle),
      child: TextField(
        controller: textEditingController,
        obscureText: true,
        textAlign: TextAlign.center,
        enabled: false,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
