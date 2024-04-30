import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_application/pdf1.dart';

class Setdata extends StatefulWidget {
  const Setdata({Key? key}) : super(key: key);

  @override
  State<Setdata> createState() => _SetdataState();
}

class _SetdataState extends State<Setdata> {
  @override
  Widget build(BuildContext context) {
    dynamic list = ModalRoute.of(context)!.settings.arguments;
    List pdf1 = [
      list[0],
      list[1],
      list[2],
      list[3],
      list[4],
      list[5],
      list[6],
      list[7],
      list[8],
      list[9],
      list[10],
      list[11],
      list[12],
      list[13],
      list[14],
      list[15],
    ];
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  color: Colors.indigo.shade400,
                  padding: EdgeInsets.only(top: 45, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${list[0]} ${list[15]}".toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                      Text(
                        "${list[4]}",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 19,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 230, top: 30),
                  child: list[10] == null
                      ? CircleAvatar(
                          radius: 65,
                          backgroundImage:
                              AssetImage("assets/image/profile.png"),
                        )
                      : CircleAvatar(
                          radius: 65,
                          backgroundImage: FileImage(File("${list[10]}")),
                        ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        set("Contact me", Colors.indigo.shade400, 18),
                        h(10),
                        set("Mobile", Colors.grey, 17),
                        h(3),
                        set("${list[9]}-${list[1]}", Colors.black, 15),
                        h(3),
                        set("E-mail", Colors.grey, 17),
                        h(3),
                        set("${list[2]}", Colors.black, 15),
                        h(3),
                        set("Birth-Date", Colors.grey, 17),
                        h(3),
                        set("${list[3]}", Colors.black, 15),
                        h(35),
                        set("Skills", Colors.indigo.shade400, 18),
                        h(10),
                        set("${list[7]}", Colors.black, 17),
                        h(35),
                        set("language", Colors.indigo.shade400, 18),
                        h(10),
                        set("${list[5]}", Colors.black, 17),
                        h(35),
                        set("Hobbies", Colors.indigo.shade400, 18),
                        h(10),
                        set("${list[12]}${list[13]}\n${list[14]}${list[11]}",
                            Colors.black, 17),
                        h(30),
                        set("Others", Colors.indigo.shade400, 18),
                        (list[8] == "")
                            ? (Text(
                                "   -",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ))
                            : (set("${list[8]}", Colors.black, 17))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          h(20),
                          set("Edducation", Colors.indigo.shade400, 18),
                          h(5),
                          set("${list[6]}", Colors.black, 17),
                          h(150),
                          set("Experience", Colors.indigo.shade400, 18),
                          h(5),
                          set("The startup ", Colors.black, 17),
                          h(210),
                          set("Reference", Colors.indigo.shade400, 18),
                          h(5),
                          set("Name: rajesh godhani ", Colors.black, 17),
                          h(20),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo.shade400),
                onPressed: () {
                  pdfCreate(pdf1);
                },
                child: Text(
                  " DOWNLOAD ",
                  style: TextStyle(fontSize: 20, letterSpacing: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget w(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget h(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget set(dynamic list, color, double size) {
    return Text(
      "$list",
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
