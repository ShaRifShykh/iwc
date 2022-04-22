import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/buyAndSell/buy_screen.dart';
import 'package:iwc/views/buyAndSell/sell_screen.dart';

class BuySellHomeScreen extends StatefulWidget {
  const BuySellHomeScreen({Key? key}) : super(key: key);

  @override
  State<BuySellHomeScreen> createState() => BuySellScreeHomenState();
}

class BuySellScreeHomenState extends State<BuySellHomeScreen> {
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
                text: "Buy",
              ),
              Tab(
                text: "Sell",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            BuyScreen(),
            SellScreen(),
          ],
        ),
      ),
    );
  }
}
