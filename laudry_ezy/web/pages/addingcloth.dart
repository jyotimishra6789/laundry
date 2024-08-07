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
      'Shirt',
      'T-shirt',
      'Pant',
      'Uniform',
      'Bedsheet',
      'Curtain',
      'Shorts',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button action
          },
        ),
        title: Text(
          'Add Clothes',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: arrName.length,
        itemBuilder: (context, index) {
          TextEditingController quantityController = TextEditingController();
          
          return Column(
            children: <Widget>[
              ListTile(
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        arrName[index],
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove, color: Colors.grey),
                      onPressed: () {
                        int currentValue = int.parse(quantityController.text.isEmpty ? '0' : quantityController.text);
                        if (currentValue > 0) {
                          quantityController.text = (currentValue - 1).toString();
                        }
                      },
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      child: TextField(
                        controller: quantityController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add, color: Colors.grey),
                      onPressed: () {
                        int currentValue = int.parse(quantityController.text.isEmpty ? '0' : quantityController.text);
                        quantityController.text = (currentValue + 1).toString();
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0), // Adjust padding as needed
                child: Divider(height: 10, thickness: 1),
              ),
            ],
          );
        },
      ),
    );
  }
}
