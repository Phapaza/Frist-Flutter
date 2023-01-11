import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Team Group")),
      ),
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          Card(
              //ค่าที่ต้องการเพิ่ม
              context: context,
              color: Color.fromARGB(255, 155, 195, 255),
              blocktext: "คนที่ 1",
              imgPath: "/assets/images/7.jpg",
              nickname: "ภูผา",
              id: "รหัสนักศึกษา : 633410021-7",
              name: "นายจตุรวิธ มั่งกูล"),
          Card(
              context: context,
              color: Color.fromARGB(255, 155, 215, 255),
              blocktext: "คนที่ 2",
              imgPath: "/assets/images/6.jpg",
              nickname: "แพรว",
              id: "รหัสนักศึกษา : 633410024-1",
              name: "นางสาวแพรวพรรณ แก้วก่ำ"),
          Card(
              context: context,
              color: Color.fromARGB(255, 155, 215, 255),
              blocktext: "คนที่ 3",
              imgPath: "/assets/images/4.jpg",
              nickname: "พล",
              id: "รหัสนักศึกษา : 633410025-9",
              name: "นายภัทรพล ลิมปนาคม"),
          Card(
              context: context,
              color: Color.fromARGB(255, 155, 195, 255),
              blocktext: "คนที่ 4",
              imgPath: "/assets/images/5.jpg",
              nickname: "สแตม",
              id: "รหัสนักศึกษา : 633410005-5",
              name: "นายพิสิษฐ์ แซ่เอี้ย"),
        ],
      ),
    );
  }

  Widget Card(
      //กำหนดค่าที่ใช้รับในการส่ง
      {
    required BuildContext context,
    required Color color,
    required String blocktext,
    required String imgPath,
    required String nickname,
    required String id,
    required String name,
  }) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        //กำหนดค่าที่ใช้ส่ง
                        name: blocktext,
                        imPath: imgPath,
                        Nickname: nickname,
                        id: id,
                        Name: name,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 90, backgroundImage: NetworkImage(imgPath)),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({
    required this.name,
    required this.Nickname,
    required this.imPath,
    required this.id,
    required this.Name,
  });
  String name;
  String Nickname;
  String imPath;
  String id;
  String Name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("สมาชิกในกลุ่ม"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(radius: 120, backgroundImage: NetworkImage(imPath)),
              Padding(padding: EdgeInsets.all(10.0)),
              Text(name),
              Text(Nickname),
              Text(Name),
              Text(id),
            ],
          ),
        ));
  }
}
