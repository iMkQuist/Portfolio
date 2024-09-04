import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/constants.dart';

class Achievements extends StatelessWidget {
  const Achievements({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Here are all my achievements',
        style: TextStyle(color: bodyTextColor),
      )),
      backgroundColor: bgColor,
    );
  }
}
