import 'package:flutter/material.dart';
import 'package:talkaro_messenger/screens/mobile_layout_screen.dart';
import 'package:talkaro_messenger/screens/web_layout_screen.dart';
import 'package:talkaro_messenger/utils/responsive_layout.dart';


import 'colors.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Talkaro-Messenger',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home:  ResponsiveLayout(
        mobileScreenLayout: MobileLayoutScreen(),
        webScreenLayout: WebLayoutScreen(),
      ),
    );
  }
}