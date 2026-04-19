import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutScreen(),
    );
  }
}

class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column and Row Layout"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            // Top Row (1,2,3)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox("1", Colors.red),
                buildBox("2", Colors.green),
                buildBox("3", Colors.blue),
              ],
            ),

            // Large Container
            Container(
              height: 120,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Large Container",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Bottom Row (Left, Right)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBox("Left", Colors.purple),
                buildBox("Right", Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Reusable Box Widget
  Widget buildBox(String text, Color color) {
    return Container(
      height: 70,
      width: 70,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}