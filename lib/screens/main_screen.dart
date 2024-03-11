import 'dart:math';
import 'package:flutter/material.dart';
import 'package:solid_software_test/constants.dart';

///MainScreen widget that provides our main screen body
class MainScreen extends StatefulWidget {
  ///Providing constructor for MainScreen widget
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() {
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen> {
  Color backgroundColor = Colors.black; //default value for background color
  Color textColor = Colors.white; //default value for text color

//changing Background Color to Random generated
  void changeBackgroundColorToRandom() {
    setState(() {
      backgroundColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

//changing Main Text to Random generated
  void changeTextColorToRandom() {
    final Color newTextColor =
        Colors.primaries[Random().nextInt(Colors.primaries.length)];
    setState(() {
      if (newTextColor != backgroundColor) {
        textColor = newTextColor;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //change color to Random by tap
      onTap: changeBackgroundColorToRandom,
      //change color to Default by long press
      onLongPress: () {
        setState(() {
          backgroundColor = Colors.black;
        });
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: TextButton(
            style: const ButtonStyle(splashFactory: NoSplash.splashFactory),
            //change color to Random by tap
            onPressed: changeTextColorToRandom,
            //change color to Default by long press
            onLongPress: () {
              setState(() {
                textColor = Colors.white;
              });
            },
            child: Text(
              'Hello there',
              style: kMainTextStyle.copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
