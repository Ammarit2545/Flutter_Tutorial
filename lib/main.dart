import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//สร้าง Widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        appBar: AppBar(
          //ส่วนหัวแอป
          title: Text("Hello Flutter "),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Hello Dart 1"),
              Text("Hello Dart 2"),
              Text("Hello Dart 3")
            ],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
