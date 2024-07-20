import 'package:c11_exam/HomeScreen2.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen2.routeName,
      routes: {
        HomeScreen.routeName:(context) => const HomeScreen(),
        HomeScreen2.routeName:(context) =>  HomeScreen2(),



      },
    );
  }

}
