import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/buyAndSell/buy_sell_helper.dart';
import 'package:iwc/widgets/custom_text_field.dart';
import 'package:iwc/widgets/main_button.dart';
import 'package:provider/provider.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({Key? key}) : super(key: key);

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Provider.of<BuySellHelper>(context, listen: false).rowText(
                text1: "Selected Asset",
                color1: ConstantColors.black,
                text2: "1 BTC = 40000",
                color2: ConstantColors.fontColor2,
              ),
              const SizedBox(height: 30),
              const Text("Amount"),
              const SizedBox(height: 10),
              CustomTextField(
                textEditingController: amountController,
                hintText: "0.00",
                widget: Container(),
              ),
              const SizedBox(height: 20),
              const Text("Value"),
              const SizedBox(height: 10),
              CustomTextField(
                textEditingController: amountController,
                hintText: "0.00",
                widget: const Text("USD"),
              ),
              const SizedBox(height: 10),
              Provider.of<BuySellHelper>(context, listen: false).rowText(
                text1: "Available Balance",
                color1: ConstantColors.fontColor2,
                text2: "0.00 USD",
                color2: ConstantColors.fontColor2,
              ),
              const SizedBox(height: 40),
              MainButton(
                onTap: () {},
                text: "BUY",
              ),
              const SizedBox(height: 50),
              Provider.of<BuySellHelper>(context, listen: false)
                  .transactionHistoryHeading(context: context),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  "No History To Show",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: ConstantColors.fontColor2,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
