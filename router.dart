import 'package:flutter/material.dart';
import 'package:my_amazon_app/features/Screens/auth_screen.dart';
import 'package:my_amazon_app/home/screens/home_screen.dart';

//to move between pages
Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      );
    case MyHomeScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const MyHomeScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(",,,,,,,"),
          ),
        ),
      );
  }
}
