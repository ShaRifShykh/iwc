import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/depositAndWithdraw/deposit_withdraw_helper.dart';
import 'package:iwc/widgets/custom_text_field.dart';
import 'package:iwc/widgets/main_button.dart';
import 'package:provider/provider.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
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
              Provider.of<DepositWithdrawHelper>(context, listen: false)
                  .balanceDisplay(
                context: context,
                balance: 0.00,
              ),
              const SizedBox(height: 30),
              const Text("Amount"),
              const SizedBox(height: 10),
              CustomTextField(
                textEditingController: amountController,
                hintText: "0",
                widget: Container(),
              ),
              const SizedBox(height: 40),
              Provider.of<DepositWithdrawHelper>(context, listen: false)
                  .rowText(
                text1: "Transaction Fee (0%)",
                color1: ConstantColors.fontColor2,
                text2: "0.00 USD",
                color2: ConstantColors.fontColor2,
              ),
              const SizedBox(height: 10),
              MainButton(
                onTap: () {},
                text: "WITHDRAW",
              ),
              const SizedBox(height: 40),
              Provider.of<DepositWithdrawHelper>(context, listen: false)
                  .historyHeading(context: context, text: "Withdrawal"),
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
