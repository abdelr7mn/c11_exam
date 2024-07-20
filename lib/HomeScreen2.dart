import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  static const String routeName = 'HomeScreen2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Image.asset('assets/images/Group.png', width: 24, height: 24),
            SizedBox(width: 8),
            Text("Moody", style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello, Sara Rose",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              Text("How are you feeling today ?",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMoodIcon('Love', 'assets/images/Group.png'),
                  _buildMoodIcon('Cool', 'assets/images/Group.png'),
                  _buildMoodIcon('Happy', 'assets/images/Group.png'),
                  _buildMoodIcon('Sad', 'assets/images/Group.png'),
                ],
              ),
              SizedBox(height: 16),
              _buildSectionHeader('Feature', onPressed: () {}),
              _buildFeatureCard(),
              _buildSectionHeader('Exercise', onPressed: () {}),
              _buildExerciseGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: ""),
        ],
        onTap: (index) {
          // Handle item tap here
        },
        currentIndex: 0, // Set the current index
      ),
    );
  }

  Widget _buildMoodIcon(String mood, String asset) {
    return Column(
      children: [
        Image.asset(asset, width: 48, height: 48),
        SizedBox(height: 4),
        Text(mood),
      ],
    );
  }

  Widget _buildSectionHeader(String title, {VoidCallback? onPressed}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        TextButton(
          onPressed: onPressed,
          child: Text("See more", style: TextStyle(color: Colors.green)),
        ),
      ],
    );
  }

  Widget _buildFeatureCard() {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Positive vibes",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Boost your mood with positive vibes"),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.play_circle_fill, color: Colors.green),
                Text("10 mins"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseGrid() {
    return GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      children: [
        _buildExerciseCard('Relaxation', 'assets/images/Group.png'),
        _buildExerciseCard('Meditation', 'assets/images/Group.png'),
        _buildExerciseCard('Breathing', 'assets/images/Group.png'),
        _buildExerciseCard('Yoga', 'assets/images/Group.png'),
      ],
    );
  }

  Widget _buildExerciseCard(String title, String asset) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(asset, width: 48, height: 48),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

