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
          child: Text(
            "Hello Dart ",
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
