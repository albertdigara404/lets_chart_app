import 'package:flutter/material.dart';
import 'package:lets_chart/colors.dart';
import 'package:lets_chart/responsive/responsive_layout.dart';
import 'package:lets_chart/screens/mobile_screen_layout.dart';
import 'package:lets_chart/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lets Chat(WhatsApp Clone)',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout(),),
    );
  }
}

