import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrName = [
      'MONDAY',
      'TUESDAY',
      'WEDNESDAY',
      'THURSDAY',
      'FRIDAY',
      'SATURDAY',
      'SUNDAY',
    ];
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button action
          },
        ),
        title: Text(
          'Flanks',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white, // Set to indigo for visibility
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
                subtitle: Text('27/06/2024'), // Example date
                trailing: Icon(Icons.arrow_forward, color: Colors.grey),
                onTap: () {
                  // Handle item tap
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 72.0), // Align with leading icon
                child: Divider(height: 10, thickness: 1),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FAB action
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.indigo,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
