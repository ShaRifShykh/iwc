import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/router/routers.dart';
import 'package:iwc/values/branding_color.dart';
import 'package:iwc/views/account/account_helper.dart';
import 'package:iwc/views/auth/auth_helper.dart';
import 'package:iwc/views/community/chatting/chatting_helper.dart';
import 'package:iwc/views/community/feed/feed_helper.dart';
import 'package:iwc/views/notification/notification_helper.dart';
import 'package:iwc/views/wallet/wallet_helper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const IWC());
}

class IWC extends StatelessWidget {
  const IWC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthHelper()),
        ChangeNotifierProvider(create: (_) => WalletHelper()),
        ChangeNotifierProvider(create: (_) => AccountHelper()),
        ChangeNotifierProvider(create: (_) => NotificationHelper()),
        ChangeNotifierProvider(create: (_) => FeedHelper()),
        ChangeNotifierProvider(create: (_) => ChattingHelper()),
      ],
      child: MaterialApp(
        title: 'IWC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
          ).fontFamily,
          primarySwatch: brandingColor,
        ),
        onGenerateRoute: Routers.onGenerateRoute,
        initialRoute: splashRoute,
      ),
    );
  }
}
