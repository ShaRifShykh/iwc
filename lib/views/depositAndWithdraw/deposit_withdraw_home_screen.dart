import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/depositAndWithdraw/deposit_screen.dart';
import 'package:iwc/views/depositAndWithdraw/withdraw_screen.dart';

class DepositWithdrawHomeScreen extends StatefulWidget {
  const DepositWithdrawHomeScreen({Key? key}) : super(key: key);

  @override
  State<DepositWithdrawHomeScreen> createState() =>
      _DepositWithdrawHomeScreenState();
}

class _DepositWithdrawHomeScreenState extends State<DepositWithdrawHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ConstantColors.bgColor,
        appBar: AppBar(
          backgroundColor: ConstantColors.whiteColor,
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: ConstantColors.fontColor,
            labelColor: ConstantColors.main,
            labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
            ),
            indicatorColor: ConstantColors.main,
            tabs: const [
              Tab(
                text: "Deposit",
              ),
              Tab(
                text: "Withdraw",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DepositScreen(),
            WithdrawScreen(),
          ],
        ),
      ),
    );
  }
}
