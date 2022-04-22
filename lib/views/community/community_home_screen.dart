import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/community/chatting/chatting_screen.dart';
import 'package:iwc/views/community/feed/feed_screen.dart';
import 'package:iwc/views/community/profile/profile_screen.dart';

class CommunityHomeScreen extends StatefulWidget {
  const CommunityHomeScreen({Key? key}) : super(key: key);

  @override
  State<CommunityHomeScreen> createState() => _CommunityHomeScreenState();
}

class _CommunityHomeScreenState extends State<CommunityHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ConstantColors.bgColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: ConstantColors.whiteColor,
          centerTitle: true,
          title: Text(
            "Community",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: ConstantColors.black,
            ),
          ),
          bottom: TabBar(
            unselectedLabelColor: ConstantColors.fontColor,
            labelColor: ConstantColors.main,
            labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
            ),
            indicatorColor: ConstantColors.main,
            tabs: const [
              Tab(
                text: "Feed",
              ),
              Tab(
                text: "Chatting",
              ),
              Tab(
                text: "Profile",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FeedScreen(),
            const ChattingScreen(),
            const ProfileScreen(),
          ],
        ),
      ),
    );
  }
}
