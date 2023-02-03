import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController scaleAnimController;

  @override
  void initState() {
    scaleAnimController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );
    scaleAnimController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        child: Stack(
          children: [
            Container(
              transform: Matrix4.translationValues(
                screenSize.width / 7,
                -screenSize.height / 3,
                0,
              ),
              alignment: Alignment.topRight,
              child: Lottie.asset(
                'assets/anim/firework1.json',
                repeat: true,
              ),
            ),
            Container(
              transform: Matrix4.translationValues(
                -screenSize.width / 5,
                0,
                0,
              ),
              alignment: Alignment.centerLeft,
              child: Lottie.asset(
                'assets/anim/firework2.json',
                repeat: true,
              ),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                width: screenSize.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    ScaleTransition(
                      scale: Tween(
                        begin: 0.0,
                        end: 1.0,
                      ).animate(scaleAnimController),
                      child: SvgPicture.asset(
                        'assets/images/pratvi_logo.svg',
                        height: screenSize.height / 3.5,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Welcome to Rutvi & Pranay\'s Wedding',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'script',
                          fontSize: 55,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: screenSize.width,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'We are thrilled that you could make the trip here to celebrate the joy of Rutvi and Pranay\'s wedding! \n\nWe are so fortunate to have your love and support.\n\nThank you so much for being a part of this weekend and we hope you enjoy your stay.\n\nLet\'s have the best time together as Ruts gets Pranked!\n\nFor a smooth event we have created an app to provide all details regarding the event, logistics and persons of contact.\nDownload from the link below.\n\nWarm Regards\nDiti and Trushit Chokshi',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'script',
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: () => window.open(
                              'https://stackoverflow.com/questions/ask',
                              'new tab'),
                          child: SvgPicture.asset(
                            'assets/images/playstore.svg',
                            height: screenSize.height / 6,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => window.open(
                              'https://stackoverflow.com/questions/ask',
                              'new tab'),
                          child: SvgPicture.asset(
                            'assets/images/appstore.svg',
                            height: screenSize.height / 6,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: screenSize.width,
                      height: 40,
                      alignment: Alignment.center,
                      color: const Color(0xff0c0c0c),
                      child: const Text(
                        'Developed by Yashas H Majmudar',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}