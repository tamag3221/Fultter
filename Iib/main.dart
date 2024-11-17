import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      home: ResponsiveScreen(),
    );
  }
}

class ResponsiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI Example'),
      ),
      body: Center(
        child: Container(
          color: screenWidth < 600 ? Colors.blue : Colors.green,
          height: 200,
          width: 200,
          child: Center(
            child: Text(
              screenWidth < 600 ? 'Mobile View' : 'Tablet/Desktop View',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
