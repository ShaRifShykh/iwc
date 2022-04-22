import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/notification/notification_helper.dart';
import 'package:provider/provider.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            FontAwesomeIcons.arrowLeft,
            color: ConstantColors.black,
          ),
        ),
        title: Text(
          "Notifications",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: ConstantColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Provider.of<NotificationHelper>(context, listen: false)
                .notificationItem(
              context: context,
              title: "Lorem lipsum",
              time: "12 hours ago",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
            Provider.of<NotificationHelper>(context, listen: false)
                .notificationItem(
              context: context,
              title: "Lorem lipsum",
              time: "12 hours ago",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
            Provider.of<NotificationHelper>(context, listen: false)
                .notificationItem(
              context: context,
              title: "Lorem lipsum",
              time: "12 hours ago",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
            Provider.of<NotificationHelper>(context, listen: false)
                .notificationItem(
              context: context,
              title: "Lorem lipsum",
              time: "12 hours ago",
              description:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            ),
          ],
        ),
      ),
    );
  }
}
