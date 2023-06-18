import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column inside Row Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Column inside Row Example'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Item 1'),
                  Text('Item 2'),
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Item 3'),
                  Text('Item 4'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
