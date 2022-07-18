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
            child: Image(
                image: NetworkImage(
                    "https://image.shutterstock.com/image-illustration/3d-rendering-billboards-advertisement-signs-600w-1804289950.jpg"))),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
