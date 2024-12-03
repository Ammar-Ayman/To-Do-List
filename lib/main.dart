import 'package:flutter/material.dart';
import 'package:to_do_list/core/configuration/items_generate_route.dart';
import 'package:to_do_list/core/configuration/items_routes_names.dart';
import 'package:to_do_list/core/theme/application_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'To Do List',
      theme: ApplicationTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute:ItemsGenerateRoute.onGenerateRoutes ,
      initialRoute: ItemsRouteName.splashScreen,
    );
  }
}


