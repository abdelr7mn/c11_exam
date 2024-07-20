import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'page2.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => const HomeScreen(),


      },
    );
  }

}
