import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/constants.dart';
import 'package:learn_flutter/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scrollBehavior: const CupertinoScrollBehavior(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
        useMaterial3: true,
        fontFamily: "Avenir",
        textTheme: const TextTheme(
          titleSmall: TextStyle(
            fontFamily: "Avenir",
            color: kprimaryTextColor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          titleMedium: TextStyle(
            fontFamily: "Avenir",
            color: ksecondaryTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w200,
          ),
          titleLarge: TextStyle(
            fontFamily: "Avenir",
            fontWeight: FontWeight.bold,
            color: kprimaryTextColor,
            fontSize: 18,
          ),
          headlineMedium: TextStyle(
            fontFamily: "Avenir",
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: kprimaryTextColor,
          ),
          headlineSmall: TextStyle(
            fontFamily: "Avenir",
            fontSize: 20,
            color: kprimaryTextColor,
            fontWeight: FontWeight.w700,
          ),
          bodyMedium: TextStyle(
            fontFamily: "Avenir",
            color: ksecondaryTextColor,
            fontSize: 12,
          ),
          bodySmall: TextStyle(
            fontFamily: "Avenir",
            fontWeight: FontWeight.w700,
            fontSize: 10,
            color: Color(0xff7B8BB2),
          ),
          bodyLarge: TextStyle(
            fontFamily: "Avenir",
            color: kprimaryTextColor,
            fontSize: 14,
          ),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
