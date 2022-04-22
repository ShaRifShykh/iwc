import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/account/account_screen.dart';
import 'package:iwc/views/buyAndSell/buy_sell_home_screen.dart';
import 'package:iwc/views/community/community_home_screen.dart';
import 'package:iwc/views/depositAndWithdraw/deposit_withdraw_home_screen.dart';
import 'package:iwc/views/wallet/wallet_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _selectIndex = 0;

  final List<Widget> _screens = const [
    WalletScreen(),
    BuySellHomeScreen(),
    CommunityHomeScreen(),
    DepositWithdrawHomeScreen(),
    AccountScreen(),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 100),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: _screens,
        controller: _pageController,
        onPageChanged: _onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ConstantColors.whiteColor,
        onTap: _onItemTapped,
        currentIndex: _selectIndex,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.wallet,
              size: 20,
            ),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              // ignore: deprecated_member_use
              FontAwesomeIcons.shoppingCart,
              size: 20,
            ),
            label: "Buy/Sell",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.users,
              size: 20,
            ),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.moneyBillTransfer,
              size: 20,
            ),
            label: "DEP/WDL",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              // ignore: deprecated_member_use
              FontAwesomeIcons.userAlt,
              size: 20,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
