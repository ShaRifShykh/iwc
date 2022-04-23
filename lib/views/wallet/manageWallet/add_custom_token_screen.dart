import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/wallet/wallet_helper.dart';
import 'package:iwc/widgets/main_button.dart';
import 'package:provider/provider.dart';

class AddCustomTokenScreen extends StatefulWidget {
  const AddCustomTokenScreen({Key? key}) : super(key: key);

  @override
  State<AddCustomTokenScreen> createState() => _AddCustomTokenScreenState();
}

class _AddCustomTokenScreenState extends State<AddCustomTokenScreen> {
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
          "Add Token",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: ConstantColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Select Coin"),
              const SizedBox(height: 10),
              // Dropdown
              const SizedBox(height: 20),
              const Text("Token Contract Address"),
              const SizedBox(height: 10),
              Provider.of<WalletHelper>(context, listen: false).textField(
                context: context,
                hintText: "Enter Token Contract Address",
              ),
              const SizedBox(height: 20),
              const Text("Token Symbol"),
              const SizedBox(height: 10),
              Provider.of<WalletHelper>(context, listen: false).textField(
                context: context,
                hintText: "Enter Token Symbol",
              ),
              const SizedBox(height: 20),
              const Text("Decimal of Precision"),
              const SizedBox(height: 10),
              Provider.of<WalletHelper>(context, listen: false).textField(
                context: context,
                hintText: "0",
              ),
              const SizedBox(height: 30),
              MainButton(
                onTap: () {},
                text: "Add Token",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
