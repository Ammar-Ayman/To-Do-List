import 'dart:async';
import 'package:flutter/material.dart';
import 'package:to_do_list/core/configuration/items_routes_names.dart';
import '../../feature/Register/log-in_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, ItemsRouteName.loginView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Image.asset("Assets/images/logo.png"),
    ));
  }
}

