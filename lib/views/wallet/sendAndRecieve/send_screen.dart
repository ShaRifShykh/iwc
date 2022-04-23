import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/values/constant_colors.dart';
import 'package:iwc/views/wallet/wallet_helper.dart';
import 'package:iwc/widgets/custom_text_field.dart';
import 'package:iwc/widgets/main_button.dart';
import 'package:provider/provider.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({Key? key}) : super(key: key);

  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  TextEditingController addressController = TextEditingController();

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
          "Send",
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
              const Text("Recipient Address"),
              const SizedBox(height: 10),
              CustomTextField(
                textEditingController: addressController,
                hintText: "Enter Address",
                widget: Container(
                  width: 20,
                  height: 20,
                  color: ConstantColors.main,
                ),
              ),
              const SizedBox(height: 20),
              const Text("Enter Amount"),
              const SizedBox(height: 10),
              Provider.of<WalletHelper>(context, listen: false).textField(
                context: context,
                hintText: "0.001",
              ),
              const SizedBox(height: 20),
              const Text("Transaction Fee (TRX) (approximate maximum)"),
              const SizedBox(height: 10),
              Provider.of<WalletHelper>(context, listen: false).textField(
                context: context,
                hintText: "Transaction Fee",
              ),
              const SizedBox(height: 30),
              MainButton(
                onTap: () {},
                text: "Send",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
