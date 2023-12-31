import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:weddinghub/repsonsive/desktop_layout.dart';
import 'package:weddinghub/repsonsive/mobile_layout.dart';
import 'package:weddinghub/repsonsive/responsive_layout.dart';
import 'package:weddinghub/splash_screen.dart';
void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
       ResponsivLayout(
        mobile: MobilePage(), 
        desktop: DesktopPage(),
      ),
    );
  }
}
