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
        leading: BackButton(color: Colors.white), 
        title: Text(
          'Add Clothes',
          style: TextStyle(color: Colors.white), 
        ),
        backgroundColor: Colors.indigo, 
        centerTitle: true, 
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
                color: Colors.black, 
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () {
                
                  print('Choose Image button pressed');
                },
                child: Text('Choose Image', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0), 
                  ),
                  backgroundColor: Colors.indigo, 
                  minimumSize: Size(600, 200), 
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Cloth Name:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity, 
              padding: EdgeInsets.symmetric(horizontal: 12), 
              child: TextField(
                controller: _clothNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter cloth name', 
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                
                  print('Cloth Name: ${_clothNameController.text}');
                  
                 
                  Navigator.pop(context);
                },
                child: Text('Add Clothes', style: TextStyle(color: Colors.indigo)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
