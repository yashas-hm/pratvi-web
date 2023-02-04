import 'package:flutter/material.dart';
import 'package:pratvi_web/core/app_colors.dart';
import 'package:pratvi_web/screens/mobile_screen.dart';
import 'package:pratvi_web/screens/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ruts gets Pranked!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors().darkGreen,
        scaffoldBackgroundColor: AppColors().lightYellow,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'montserrat',
              bodyColor: AppColors().darkGreen,
              displayColor: AppColors().darkGreen,
            ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColors().lightYellow,
          ),
          backgroundColor: AppColors().lightYellow,
        ),
      ).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors().darkGreen,
          primary: AppColors().darkGreen,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          selectionHandleColor: Colors.transparent,
        ),
      ),
      home: const ShowPage(),
    );
  }
}

class ShowPage extends StatelessWidget {
  const ShowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if(screenSize.width > screenSize.height) {
      return const WebScreen();
    }else{
      return const MobileScreen();
    }
  }
}

