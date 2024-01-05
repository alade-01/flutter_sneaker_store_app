import 'package:flutter/material.dart';
import 'package:x_store/windows/dashboard/Home/new_and_popular/product_details/product_detail.dart';
// import 'package:login_register_app_ui_kit/windows/login_screen.dart';
// import 'package:login_register_app_ui_kit/windows/new_password_screen.dart';
// import 'package:login_register_app_ui_kit/windows/otp_screen.dart';
// import 'package:login_register_app_ui_kit/windows/password_changed_screen.dart';
// import 'package:login_register_app_ui_kit/windows/register_screen.dart';

import '../windows/auth/register_screen.dart';
import '../windows/auth/sign_in_screen.dart';
import '../windows/auth/welcome_screen.dart';
import '../windows/index_screen.dart';
// import '../windows/forgot_password_screen.dart';
// import '../windows/splash_screen.dart';
// import '../windows/welcome_screen.dart';

class RouterGenerator {
  static const splashRoute = "/";
  static const introRoute = "/intro";
  static const loginRoute = "/login";
  static const registerRoute = "/register";

  static const forgotPasswordRoute = "/forgot-password";
  static const otpRoute = "/otp";
  static const newPasswordRoute = "/new-password";
  static const passwordChangedRoute = "/password-changed";


  static const dashboardRoute = "/dashboard";
  static const productDetailRoute = "/product-detail";

  // static const indexRoute = "/index";

  static Route<dynamic> navigate(RouteSettings setting) {
    debugPrint("$setting");
    switch (setting.name) {
     // case RouterGenerator.splashRoute:
        // return MaterialPageRoute(
        //   builder: (_) => const SplashScreen(),
        // );
      case RouterGenerator.introRoute:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
       case RouterGenerator.loginRoute:
         return MaterialPageRoute(
           builder: (_) => const SignInScreen(),
         );
       case RouterGenerator.registerRoute:
         return MaterialPageRoute(
           builder: (_) => const SignUpScreen(),
         );
      // case RouterGenerator.forgotPasswordRoute:
      //   return MaterialPageRoute(
      //     builder: (_) => const ForgotPasswordScreen(),
      //   );
      //   case RouterGenerator.otpRoute:
      //   return MaterialPageRoute(
      //     builder: (_) => const OtpsScreen(),
      //   );
      //   case RouterGenerator.newPasswordRoute:
      //   return MaterialPageRoute(
      //     builder: (_) => const NewPasswordScreen(),
      //   );
      //   case RouterGenerator.passwordChangedRoute:
      //   return MaterialPageRoute(
      //     builder: (_) => const PasswordChangedScreen(),
      //   );
       case RouterGenerator.dashboardRoute:
         return MaterialPageRoute(
           builder: (_) =>  IndexScreen(),
         );
         case RouterGenerator.productDetailRoute:
         return MaterialPageRoute(
           builder: (_) =>  ProductDetail(),
         );
      default:
        return MaterialPageRoute(
          builder: (_) => const WelcomeScreen(),
        );
    }
  }
}
