import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFF3E0),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profile.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  'Pankaj Yadav',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF607D8B),
                  ),
                ),

                SizedBox(height: 20), // Space before contact

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone, color: Colors.grey[700]),
                    SizedBox(width: 10),
                    Text(
                      '+91 (555) 123-4567',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email, color: Colors.blueGrey[700]),
                    SizedBox(width: 20),
                    Text(
                      'mashoom.sharma@egmail.com',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
