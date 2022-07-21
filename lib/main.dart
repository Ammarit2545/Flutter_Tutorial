import 'package:flutter/material.dart';
import 'FoodMenu.dart';
import 'MoneyBox.dart';

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
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "50", "assets/image/01.jpg"),
    FoodMenu("กระเพราหมูไข่ดาว", "50", "assets/image/02.jpg"),
    FoodMenu("ส้มตำ", "80", "assets/image/03.jpg"),
    FoodMenu("ผัดไทย", "60", "assets/image/04.jpg")
  ];

  int number = 0; //สร้าง state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //ส่วนหัวแอป
          title: Text("เลือกเมนู"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox("ยอดคงเหลือ", 12000, Colors.lightBlue, 120),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายรับ", 15000, Colors.green, 120),
              SizedBox(
                height: 5,
              ),
              MoneyBox("รายจ่าย", 15222, Colors.purple, 120),
              SizedBox(
                height: 5,
              ),
              MoneyBox("ค้างชำระ", 15222, Colors.pink, 120)
            ],
          ),
        ));
  }

  List<Widget> getData(int count) {
    List<Widget> data = [];
    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text(
          "เมนู ${i + 1}",
          style: TextStyle(fontSize: 25),
        ),
        subtitle: Text("หัวข้อย่อยที่ ${i + 1}"),
      );
      data.add(menu);
    }
    return data;
  }
}
