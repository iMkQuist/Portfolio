import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/constants.dart';
import 'package:flutter_application_1/view/splash/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: bgColor,
          useMaterial3: true,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
              .apply(
                bodyColor: Colors.white,
              )
              .copyWith(
                bodyMedium: const TextStyle(color: bodyTextColor),
                bodyLarge: const TextStyle(color: bodyTextColor),
              ),
        ),
        home: const SplashView());
  }
}
