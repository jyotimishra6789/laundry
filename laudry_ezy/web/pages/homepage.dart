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
           
          },
        ),
        title: Text(
          'HOME',
          style: TextStyle(color: Colors.white), 
        ),
        backgroundColor: Colors.indigo, 
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
                subtitle: Text('FLANK '),
                trailing: Icon(Icons.arrow_forward, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 72.0), 
                child: Divider(height: 10, thickness: 1),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.indigo, 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
