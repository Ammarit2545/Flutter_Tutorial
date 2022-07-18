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
      title: "โปรแกรมนับเลข",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; //สร้าง state

  @override
  Widget build(BuildContext context) {
    /*List<Widget> data = [];
    for (var i = 0; i < 10; i++) {
      data.add(Text("กดปุ่มเพิ่มจำนวนตัวเลข $i"));
    }*/

    return Scaffold(
      appBar: AppBar(
        //ส่วนหัวแอป
        title: Text("โปรแกรมนับเลข"),
      ),
      body: Center(
        child: ListView(
          children: getData(20),
        ),
      ),
    );
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      data.add(Text("กดปุ่มเพิ่มจำนวนตัวเลข ${i + 1}"));
    }
    return data;
  }
}
