import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/community/feed/feed_helper.dart';
import 'package:iwc/widgets/community_post.dart';
import 'package:provider/provider.dart';

class FeedScreen extends StatelessWidget {
  FeedScreen({Key? key}) : super(key: key);

  final TextEditingController postController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Provider.of<FeedHelper>(context, listen: false).postTextField(
                textEditingController: postController,
              ),
              const SizedBox(height: 40),
              CommunityPost(
                profileImg: "",
                username: "aixelstriker",
                postImg: "",
                likes: 250,
                icons: FontAwesomeIcons.solidHeart,
                onTap: () {},
                color: ConstantColors.main,
              ),
              CommunityPost(
                profileImg: "",
                username: "aixelstriker2",
                postImg: "",
                likes: 250,
                icons: FontAwesomeIcons.solidHeart,
                onTap: () {},
                color: ConstantColors.main,
              ),
              CommunityPost(
                profileImg: "",
                username: "aixelstriker2",
                postImg: "",
                likes: 250,
                icons: FontAwesomeIcons.heart,
                onTap: () {},
                color: ConstantColors.fontColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
