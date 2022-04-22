import 'package:flutter/material.dart';
import 'package:iwc/values/constant_colors.dart';

class KeyboardIcon extends StatelessWidget {
  const KeyboardIcon({Key? key, required this.icons, required this.onPressed})
      : super(key: key);

  final IconData icons;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 1,
            color: ConstantColors.black,
          ),
        ),
        child: Center(
            child: Icon(
          icons,
        )),
      ),
    );
  }
}
