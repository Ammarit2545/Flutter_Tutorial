import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "My App",
    home: Scaffold(
      appBar: AppBar(
        //ส่วนหัวแอป
        title: Text("Hello Flutter "),
      ),
      body: Text("Hello Dart"),
    ),
    theme: ThemeData(primarySwatch: Colors.green),
  );
  runApp(app);
}
