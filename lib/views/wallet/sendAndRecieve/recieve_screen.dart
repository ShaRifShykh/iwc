import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/wallet/wallet_helper.dart';
import 'package:iwc/widgets/main_button.dart';
import 'package:provider/provider.dart';

class RecieveScreen extends StatefulWidget {
  const RecieveScreen({Key? key}) : super(key: key);

  @override
  State<RecieveScreen> createState() => _RecieveScreenState();
}

class _RecieveScreenState extends State<RecieveScreen> {
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
          "Recieve",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: ConstantColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 70, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                color: ConstantColors.main,
              ),
              const SizedBox(height: 15),
              Text(
                "LoremipsumdolorsitametconsecteturadipiscingelitCr",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 70),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Amount",
                ),
              ),
              const SizedBox(height: 10),
              Provider.of<WalletHelper>(context, listen: false).textField(
                context: context,
                hintText: "Enter Amount",
              ),
              const SizedBox(height: 40),
              MainButton(
                onTap: () {},
                text: "Share",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
