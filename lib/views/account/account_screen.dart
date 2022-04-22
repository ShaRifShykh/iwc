import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/account/account_helper.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool _switchVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        centerTitle: true,
        title: Text(
          "Account",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: ConstantColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Provider.of<AccountHelper>(context, listen: false)
                  .simpleAccountItem(
                context: context,
                onTap: () {
                  Navigator.pushNamed(context, notificationRoute);
                },
                text: "Notifications",
              ),
              Provider.of<AccountHelper>(context, listen: false)
                  .accountItemWithCustomWidget(
                context: context,
                text: "FingerPrint",
                widget: CupertinoSwitch(
                  activeColor: ConstantColors.main,
                  value: _switchVal,
                  onChanged: (value) {
                    setState(() {
                      _switchVal = value;
                    });
                  },
                ),
              ),
              Provider.of<AccountHelper>(context, listen: false)
                  .simpleAccountItem(
                context: context,
                onTap: () {},
                text: "Change Pin",
              ),
              Provider.of<AccountHelper>(context, listen: false)
                  .accountItemWithCustomWidget(
                context: context,
                text: "Fiat Currency",
                widget: Text(
                  "USD",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Provider.of<AccountHelper>(context, listen: false)
                  .simpleAccountItem(
                context: context,
                onTap: () {},
                text: "KYC Status",
              ),
              Provider.of<AccountHelper>(context, listen: false)
                  .simpleAccountItem(
                context: context,
                onTap: () {
                  Navigator.pushNamed(context, aboutUsRoute);
                },
                text: "About Us",
              ),
              Provider.of<AccountHelper>(context, listen: false)
                  .simpleAccountItem(
                context: context,
                onTap: () {
                  Navigator.pushNamed(context, contactUsRoute);
                },
                text: "Contact Us",
              ),
              Provider.of<AccountHelper>(context, listen: false)
                  .simpleAccountItem(
                context: context,
                onTap: () {
                  Navigator.pushNamed(context, termsAndConditionsRoute);
                },
                text: "Terms & Conditions",
              ),
              Provider.of<AccountHelper>(context, listen: false)
                  .simpleAccountItem(
                context: context,
                onTap: () {
                  Navigator.pushNamed(context, privacyPolicyRoute);
                },
                text: "Privacy Policy",
              ),
              GestureDetector(
                onTap: () {},
                child: Provider.of<AccountHelper>(context, listen: false)
                    .accountItemWithCustomWidget(
                  context: context,
                  text: "Logout",
                  widget: const Icon(
                    // ignore: deprecated_member_use
                    FontAwesomeIcons.signOut,
                    color: ConstantColors.main,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
