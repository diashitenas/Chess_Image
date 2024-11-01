import 'package:flutter/material.dart';

class EatRightApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EatRightScreen(),
    );
  }
}

class EatRightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB3DAF1), // Light blue background
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('assets/food_bowl.png'), // Add your image asset here
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, size: 10, color: Colors.grey),
              SizedBox(width: 8),
              Icon(Icons.circle, size: 10, color: Colors.black),
              SizedBox(width: 8),
              Icon(Icons.circle, size: 10, color: Colors.grey),
            ],
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Color(0xFF002244), // Dark blue background
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to EatRight!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text(
                  'Your personalized food guide designed to help you manage allergies and health conditions. With tailored recommendations and easy tracking.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    // Your onPressed action here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Color(0xFF002244), // Dark blue text
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}