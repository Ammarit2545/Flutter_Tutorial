void main() async {
  // login
  print(await loginUser());
  print("ทำงานอื่นต่อไป");
}

Future<String> loginUser() async {
  // ดึงข้อมูล
  var user = await getUserFromDatabase();
  return "ชื่อผู้ใช้ คือ " + user;
}

//
Future<String> getUserFromDatabase() {
  return Future.delayed(Duration(seconds: 10), () => "Ammarit");
}

/*
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
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("เรียกใช้งาน init state");
  }

  @override
  Widget build(BuildContext context) {
    print("เรียกใช้งาน Build");
    return Scaffold(
        appBar: AppBar(
          //ส่วนหัวแอป
          title: Text("เลือกเมนู"),
        ),
        body: Column(
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              number++;
            });
          },
          child: Icon(Icons.add),
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
*/
