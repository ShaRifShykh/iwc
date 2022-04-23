import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/values/path.dart';
import 'package:iwc/views/wallet/wallet_helper.dart';
import 'package:iwc/widgets/main_button.dart';
import 'package:provider/provider.dart';

class ManageWalletScreen extends StatefulWidget {
  const ManageWalletScreen({Key? key}) : super(key: key);

  @override
  State<ManageWalletScreen> createState() => _ManageWalletScreenState();
}

class _ManageWalletScreenState extends State<ManageWalletScreen> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            color: ConstantColors.black,
          ),
        ),
        title: Text(
          "Wallets",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: ConstantColors.black,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        height: 50,
        child: MainButton(
          onTap: () {
            Navigator.pushNamed(context, addCustomTokenRoute);
          },
          text: "Add Custom Token",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Provider.of<WalletHelper>(context, listen: false).manageWalletItem(
              context: context,
              img: Path.btcImg,
              text: "BitCoin",
              switchVal: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
            Provider.of<WalletHelper>(context, listen: false).manageWalletItem(
              context: context,
              img: Path.btcImg,
              text: "BitCoin",
              switchVal: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
            Provider.of<WalletHelper>(context, listen: false).manageWalletItem(
              context: context,
              img: Path.btcImg,
              text: "BitCoin",
              switchVal: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
            Provider.of<WalletHelper>(context, listen: false).manageWalletItem(
              context: context,
              img: Path.btcImg,
              text: "BitCoin",
              switchVal: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
