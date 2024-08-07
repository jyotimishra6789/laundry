import 'package:flutter/material.dart';

void main() {
  runApp(AddClothesApp());
}

class AddClothesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HostelList',
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
        leading: IconButton(
          icon: Icon(Icons.home, color: Colors.black),
          onPressed: () {
            // Navigate to the home screen
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Action for search button
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.black,
            height: 1.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hostel List:',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 columns
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1, // 1:1 aspect ratio for square boxes
                ),
                itemCount: 3, // Adjusted to 3 boxes
                itemBuilder: (context, index) {
                  IconData icon;
                  String labelText;

                  switch (index) {
                    case 0:
                      icon = Icons.add;
                      labelText = 'Add Flank';
                      break;
                    case 1:
                      icon = Icons.photo_library;
                      labelText = 'A&B';
                      break;
                    case 2:
                      icon = Icons.photo_library;
                      labelText = 'C';
                      break;
                    default:
                      icon = Icons.help;
                      labelText = 'Unknown';
                  }

                  return ElevatedButton(
                    onPressed: () {
                      // Add your button functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: Colors.white,
                      minimumSize: Size(50, 50),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icon, color: Colors.black, size: 50),
                        SizedBox(height: 5),
                        Text(
                          labelText,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
