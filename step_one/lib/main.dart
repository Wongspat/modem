import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modem flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {'title': "หี", 'icon': Icons.g_mobiledata_outlined},
      {'title': "ควย", 'icon': Icons.h_plus_mobiledata},
      {'title': "นม", 'icon': Icons.kebab_dining},
      {'title': "อสุจิ", 'icon': Icons.tab_sharp}
    ];
    /*Random r = new Random();
    var icona = r.nextInt(2);
    var iconb = myIcon[icona];*/

    return Scaffold(
        body: Container(
      color: Colors.blueGrey,
      child: Center(
        child: ListView.builder(
          // name constructor
          itemCount: data.length,
          itemBuilder: (context, index) {
            // เหมือนเป็นพารามิเตอร ตั้งชื่อ
            var title = data[index]['title'];
            var icon = data[index]['icon'];
            return Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.white),
                  borderRadius: BorderRadius.circular(8.0)),
              margin: EdgeInsets.all(5.0),
              child: Padding(
                //เอาไว้ครอบ เว้นระยะห่าง
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        //ถ้าจะครอบเอาตกแต่งตัวไหนตัวหนึ่ง ใช้ container ครอบ
                        /*margin: EdgeInsets.only(
                            right:
                                8.0), //เอาไว้ห่างกับตัวอกษรด้านขวาหน่อย ไม่ให้ติดกัน*/
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 5.0, color: Colors.red),
                            borderRadius: BorderRadius.circular(
                              1.0,
                            )), // กรอบวงกลม ไม่เหลี่ยม
                        child: Icon(
                          icon,
                          color: Colors.blue,
                        )),
                    SizedBox(
                      width: 8.0,
                    ), //ห่างเหมือนกัน
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pizza Thai'),
                          Text('\$12.99'),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.end, //ให้ + -ชิดขวาไปเลย
                      children: [
                        Container(
                            alignment: Alignment.center, // กลางเหมือนกัน
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Text('+')),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4.0), //ห่าง - +
                          child: Text('222222'),
                        ),
                        Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Text('-')),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
        /*child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconb),
            SizedBox(
              height: 10,
            ),
            Text(
              'เย็ดหีหน่อย',
              style: TextStyle(color: Colors.amber, fontSize: 10),
            ),
          ],
        ),*/
      ),
    ));
  }
}
