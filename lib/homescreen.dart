import '../bestseller.dart';
import 'package:flutter/material.dart';
import 'RecommendedList.dart';
import 'CategoryList.dart';
import 'SectionTitle.dart';
import '../bestseller.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'ScreenTwo';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'assets/images/Logo Small.png',
              height: 40,
              width: 40,
            ),
            SizedBox(width: 8),
            Text(
              'AudiBooks',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xff4838D1),
                fontSize: 24,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Color(0xff4838D1)),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "Library"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SectionTitle(
              title: 'Categories',
            ),
            CategoryList(),
            SectionTitle(title: 'Recommended For You'),
            RecommendedList(),
            SizedBox.shrink(),
            SectionTitle(title: 'Best Seller'),
            Row(
              children: [
                Image.asset('assets/images/Image Placeholder 3.png'),
                SizedBox(height: 10,width: 70,),
               Column(children: [
                 Text('Light Mage',style: TextStyle(fontSize: 16,color: Colors.black),),
                 SizedBox(height: 20,),
                 Text('Light Mage',style: TextStyle(fontSize: 16,color: Colors.grey),),
               ],)
              ],
            )
          ],
        ),
      ),
    );
  }
}
