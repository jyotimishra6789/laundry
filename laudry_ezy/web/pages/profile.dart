import 'package:flutter/material.dart';

void main() {
  runApp(UserProfileApp());
}

class UserProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, 
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white), // Add a back arrow icon
        title: Text(
          'User Profile',
          style: TextStyle(color: Colors.white), // Set the text color to white
        ),
        backgroundColor: Colors.indigo, // Set the background color of the AppBar to indigo
        centerTitle: true, // Center-align the title
      ),
      backgroundColor: Colors.white, // Set the background color to white
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://example.com/profile_picture.png', // Replace with your profile picture URL
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'user image',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Set text color to black for contrast
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Full Name:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Set text color to black for contrast
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(),
                  hintText: 'Enter your full name',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Username:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Set text color to black for contrast
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(),
                  hintText: 'Enter your username',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Password:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Set text color to black for contrast
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
