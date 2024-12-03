
import 'package:flutter/material.dart';
import 'package:to_do_list/core/configuration/items_routes_names.dart';
import 'package:to_do_list/core/configuration/splash_Screen.dart';

import '../../feature/Register/log-in_view.dart';
import '../../feature/Register/sig-up_view.dart';
import '../../feature/home/home_view.dart';

class ItemsGenerateRoute{
  static Route<dynamic> onGenerateRoutes(RouteSettings settings){
    switch (settings.name) {
      case ItemsRouteName.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );

    case ItemsRouteName.loginView:
      return MaterialPageRoute(
        builder: (context) => const LoginView(),
        settings: settings,
      );

    case ItemsRouteName.signUpView:
      return MaterialPageRoute(
        builder: (context) =>  SignUpView(),
        settings: settings,
      );
      case ItemsRouteName.homeView:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );

    }
  }
}

