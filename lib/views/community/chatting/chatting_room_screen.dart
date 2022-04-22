import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/community/chatting/chatting_helper.dart';
import 'package:provider/provider.dart';

class ChattingRoomScreen extends StatelessWidget {
  const ChattingRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColors.whiteColor,
        title: Text(
          "johndoe",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: ConstantColors.black,
          ),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: ConstantColors.black,
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                FontAwesomeIcons.video,
                color: ConstantColors.black,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                FontAwesomeIcons.phoneAlt,
                color: ConstantColors.black,
              ),
            ),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => {
          FocusScope.of(context).unfocus(),
        },
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 20, top: 20),
                child: ListView(
                  children: [
                    Provider.of<ChattingHelper>(context, listen: false).message(
                      username: "johndoe",
                      messageSendAt: "12:27 PM",
                      message:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    ),
                    Provider.of<ChattingHelper>(context, listen: false).message(
                      username: "johndoe2",
                      messageSendAt: "12:27 PM",
                      message:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    ),
                    Provider.of<ChattingHelper>(context, listen: false).message(
                      username: "johndoe2",
                      messageSendAt: "12:27 PM",
                      message:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    ),
                    Provider.of<ChattingHelper>(context, listen: false).message(
                      username: "johndoe",
                      messageSendAt: "12:27 PM",
                      message:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    ),
                    Provider.of<ChattingHelper>(context, listen: false).message(
                      username: "johndoe",
                      messageSendAt: "12:27 PM",
                      message: "Lorem Ipsum.",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: ConstantColors.bgColor,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: ConstantColors.whiteColor,
                  filled: true,
                  hintText: "Type Message",
                  hintStyle: GoogleFonts.poppins(
                    color: ConstantColors.fontColor,
                    fontWeight: FontWeight.w500,
                  ),
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: const Icon(
                      FontAwesomeIcons.solidPaperPlane,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColors.strokeColor3,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ConstantColors.strokeColor3,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
