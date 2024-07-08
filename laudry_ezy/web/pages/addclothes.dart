import 'package:flutter/material.dart';

void main() {
  runApp(AddClothesApp());
}

class AddClothesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Clothes',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: AddClothes(),
    );
  }
}

class AddClothes extends StatefulWidget {
  @override
  _AddClothesState createState() => _AddClothesState();
}

class _AddClothesState extends State<AddClothes> {
  final TextEditingController _clothNameController = TextEditingController();

  @override
  void dispose() {
    _clothNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white), // Add a back arrow icon
        title: Text(
          'Add Clothes',
          style: TextStyle(color: Colors.white), // Set the text color to white
        ),
        backgroundColor: Colors.indigo, // Set the background color of the AppBar to indigo
        centerTitle: true, // Center-align the title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Add Image:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set text color to black for contrast
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Action to choose an image
                  print('Choose Image button pressed');
                },
                child: Text('Choose Image', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder( // Set rectangular shape
                    borderRadius: BorderRadius.circular(0), // Set border radius
                  ),
                  backgroundColor: Colors.indigo, // Set the background color of the button
                  minimumSize: Size(600, 200), // Set the button size
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Cloth Name:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set text color to black for contrast
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity, // This makes the input box as wide as possible
              padding: EdgeInsets.symmetric(horizontal: 12), // Add horizontal padding
              child: TextField(
                controller: _clothNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter cloth name', // Set the hint text
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Action to add clothes with the provided cloth name
                  print('Cloth Name: ${_clothNameController.text}');
                  
                  // Navigate back to the previous screen (homepage)
                  Navigator.pop(context);
                },
                child: Text('Add Clothes', style: TextStyle(color: Colors.indigo)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Set the background color of the button
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
