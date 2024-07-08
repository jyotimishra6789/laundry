import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrName = [
      'Ayush Kumar',
      'Likhit Reddy',
      'Shivank Singh',
      'Himanshu',
      'Nitin',
      'Vaibhav Singh',
      'Rahul Singh',
      'Rohit'
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Define the action when the menu icon is pressed
            // For example, you can show a menu or navigate to another screen
          },
        ),
        title: Text(
          'HOME',
          style: TextStyle(color: Colors.white), // Set the text color to white
        ),
        backgroundColor: Colors.indigo, // Set the background color of the AppBar to indigo
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: arrName.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person, color: Colors.grey),
                title: Text(arrName[index]),
                subtitle: Text('Year'),
                trailing: Icon(Icons.arrow_forward, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 72.0), // Adjust the left padding as needed
                child: Divider(height: 10, thickness: 1),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Define the action when the FAB is pressed
          // For example, you can navigate to another screen or show a dialog
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.indigo, // Set the background color of the FAB
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Center the FAB at the bottom
    );
  }
}
