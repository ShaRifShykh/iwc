import 'package:flutter/material.dart';
import 'package:iwc/router/route_constant.dart';
import 'package:iwc/views/auth/sign_in/sign_in_mnemonic_screen.dart';
import 'package:iwc/views/auth/sign_in/sign_in_pin_screen.dart';
import 'package:iwc/views/auth/sign_up/sign_up_mnemonic_screen.dart';
import 'package:iwc/views/auth/sign_up/sign_up_pin_screen.dart';
import 'package:iwc/views/auth/sign_up/sign_up_username_screen.dart';
import 'package:iwc/views/community/chatting/chatting_room_screen.dart';
import 'package:iwc/views/extra/about_us_screen.dart';
import 'package:iwc/views/extra/contact_us_screen.dart';
import 'package:iwc/views/extra/privacy_policy_screen.dart';
import 'package:iwc/views/extra/terms_and_conditions.dart';
import 'package:iwc/views/home/home_screen.dart';
import 'package:iwc/views/notification/notification_screen.dart';
import 'package:iwc/views/onBoard/on_board_screen.dart';
import 'package:iwc/views/splash/splash_screen.dart';
import 'package:iwc/views/wallet/manageWallet/add_custom_token_screen.dart';
import 'package:iwc/views/wallet/manageWallet/manage_wallet_screen.dart';
import 'package:iwc/views/wallet/sendAndRecieve/recieve_screen.dart';
import 'package:iwc/views/wallet/sendAndRecieve/send_screen.dart';
import 'package:page_transition/page_transition.dart';

class Routers {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // Starting Routes
      case splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case onBoardRoute:
        return PageTransition(
          child: const OnBoardScreen(),
          type: PageTransitionType.rightToLeft,
        );

      // Auth Routes
      // Sign Up Routes
      case signUpPinRoute:
        return PageTransition(
          child: const SignUpPinScreen(),
          type: PageTransitionType.rightToLeft,
        );

      case signUpMnemonicRoute:
        return PageTransition(
          child: const SignUpMnemonicScreen(),
          type: PageTransitionType.rightToLeft,
        );

      case signUpUsernameRoute:
        return PageTransition(
          child: const SignUpUsernameScreen(),
          type: PageTransitionType.rightToLeft,
        );

      // Sign In Routes
      case signInMnemonicRoute:
        return PageTransition(
          child: const SignInMnemonicScreen(),
          type: PageTransitionType.rightToLeft,
        );

      case signInPinRoute:
        return PageTransition(
          child: const SignInPinScreen(),
          type: PageTransitionType.rightToLeft,
        );

      // Extra Routes
      case aboutUsRoute:
        return PageTransition(
          child: const AboutUsScreen(),
          type: PageTransitionType.rightToLeft,
        );

      case contactUsRoute:
        return PageTransition(
          child: const ContactUsScreen(),
          type: PageTransitionType.rightToLeft,
        );

      case termsAndConditionsRoute:
        return PageTransition(
          child: const TermsAndConditionsScreen(),
          type: PageTransitionType.rightToLeft,
        );

      case privacyPolicyRoute:
        return PageTransition(
          child: const PrivacyPolicyScreen(),
          type: PageTransitionType.rightToLeft,
        );

      case notificationRoute:
        return PageTransition(
          child: const NotificationScreen(),
          type: PageTransitionType.rightToLeft,
        );

      // Main Routes
      case homeRoute:
        return PageTransition(
          child: const HomeScreen(),
          type: PageTransitionType.rightToLeft,
        );

      // Wallet Routes
      case manageWalletRoute:
        return PageTransition(
          child: const ManageWalletScreen(),
          type: PageTransitionType.rightToLeft,
        );

      case addCustomTokenRoute:
        return PageTransition(
          child: const AddCustomTokenScreen(),
          type: PageTransitionType.rightToLeft,
        );

      // Send and Recieve Routes
      case sendRoute:
        return PageTransition(
          child: const SendScreen(),
          type: PageTransitionType.rightToLeft,
        );

      case recieveRoute:
        return PageTransition(
          child: const RecieveScreen(),
          type: PageTransitionType.rightToLeft,
        );

      // Community Routes
      case chattingRoomRoute:
        return PageTransition(
          child: const ChattingRoomScreen(),
          type: PageTransitionType.rightToLeft,
        );

      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
