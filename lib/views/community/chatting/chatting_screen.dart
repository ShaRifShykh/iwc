import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/community/chatting/chatting_helper.dart';
import 'package:provider/provider.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Provider.of<ChattingHelper>(context, listen: false)
                  .searchUserTextField(
                context: context,
                onTap: () {},
                textEditingController: textEditingController,
              ),
              const SizedBox(height: 50),
              Provider.of<ChattingHelper>(context, listen: false).users(
                context: context,
                onTap: () {
                  Navigator.pushNamed(context, chattingRoomRoute);
                },
                username: "johndoe",
                lastMessageTime: "12:28 PM",
              ),
              Provider.of<ChattingHelper>(context, listen: false).users(
                context: context,
                onTap: () {
                  Navigator.pushNamed(context, chattingRoomRoute);
                },
                username: "johndoe",
                lastMessageTime: "12:28 PM",
              ),
              Provider.of<ChattingHelper>(context, listen: false).users(
                context: context,
                onTap: () {
                  Navigator.pushNamed(context, chattingRoomRoute);
                },
                username: "johndoe",
                lastMessageTime: "12:28 PM",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
