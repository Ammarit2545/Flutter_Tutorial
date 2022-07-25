/*void main() async {
  // login
  print(await loginUser());
  print("ทำงานอื่นต่อไป");
}

Future<String> loginUser() async {
  // ดึงข้อมูล
  var user = await getUserFromDatabase();
  return "ชื่อผู้ใช้ คือ " + user;
}

//ข้อมูล
Future<String> getUserFromDatabase() {
  return Future.delayed(Duration(seconds: 10), () => "Ammarit");
}*/

import 'package:flutter/material.dart';
import 'FoodMenu.dart';
import 'MoneyBox.dart';
import 'package:http/http.dart' as http;
import 'ExchangeRate.dart';

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
  ExchangeRate dataFromAPI;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getExchangeRate();
  }

  Future<void> getExchangeRate() async {
    var url =
        "https://api.apilayer.com/exchangerates_data/live?base=USD&symbols=THB,GBP";
    var response = await http.get(url);
    setState(() {
      _dataFromAPI = exchangeRateFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("เรียกใช้งาน Build");
    return Scaffold(
      appBar: AppBar(
        //ส่วนหัวแอป
        title: Text("อัตราการแลกปลี่ยน"),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(),
          Text(_dataFromAPI?.base ?? "loading . . .")
        ],
      ),
    );
  }
}
 
 /* List<Widget> getData(int count) {
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
}*/
