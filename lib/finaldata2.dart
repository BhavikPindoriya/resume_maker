import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_application/pdf2.dart';

class setdata2 extends StatefulWidget {
  const setdata2({Key? key}) : super(key: key);

  @override
  State<setdata2> createState() => _setdata2State();
}

class _setdata2State extends State<setdata2> {
  @override
  Widget build(BuildContext context) {
    dynamic list = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 170,
                    decoration: const BoxDecoration(color: Colors.black12),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          h(20),
                          list[10] == null
                              ? const CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      AssetImage("assets/image/profile.png"),
                                )
                              : CircleAvatar(
                                  backgroundColor: Colors.white70,
                                  radius: 60,
                                  child: CircleAvatar(
                                    backgroundImage: FileImage(
                                      File("${list[10]}"),
                                    ),
                                    radius: 52,
                                  ),
                                ),
                          h(15),
                          detail("CONTACT ME", 140),
                          h(20),
                          Row(
                            children: [
                              Image.asset(
                                "assets/image/call.png",
                                height: 14,
                              ),
                              Expanded(child: Text(" ${list[9]}-${list[1]}"))
                            ],
                          ),
                          h(12),
                          Row(
                            children: [
                              Image.asset(
                                "assets/image/email.png",
                                height: 14,
                              ),
                              w(5),
                              Expanded(child: Text(" ${list[2]}"))
                            ],
                          ),
                          h(15),
                          Row(
                            children: [
                              w(2),
                              Image.asset(
                                "assets/image/cake.png",
                                height: 17,
                              ),
                              w(5),
                              Expanded(child: Text("${list[3]}"))
                            ],
                          ),
                          h(15),
                          Row(
                            children: [
                              Image.asset(
                                "assets/image/location.png",
                                height: 17,
                              ),
                              w(5),
                              const Expanded(child: Text(" Adress"))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 65),
                            child: detail("EDUCATION", 140),
                          ),
                          h(10),
                          Text("${list[6]}"),
                          h(10),
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: detail("EXPERTISE", 140),
                          ),
                          h(10),
                          Text("${list[7]}"),
                          h(10),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: detail("LANGUAGE", 140),
                          ),
                          h(10),
                          Text("${list[5]}"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            h(35),
                            Text(
                              "${list[0]}".toUpperCase(),
                              style: (list[0].length > 10)
                                  ? const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1)
                                  : const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                            ),
                            Text(
                              "${list[15]}".toUpperCase(),
                              style: (list[15].length > 10)
                                  ? const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1)
                                  : const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1),
                            ),
                            h(5),
                            Text(
                              " ${list[4]}".toUpperCase(),
                              style: (list[4].length > 18)
                                  ? const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)
                                  : const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                            ),
                            h(25),
                            Column(
                              children: [
                                detail("EXPERIENCE", 200),
                                h(7),
                                Text(
                                  "${list[17]} ",
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 180),
                              child: Column(
                                children: [
                                  detail("HOBBIES", 200),
                                  h(7),
                                  Text(
                                    "${list[13]} ${list[14]} \n${list[12]} ${list[11]}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Column(
                                children: [
                                  detail("REFERENCE", 200),
                                  h(7),
                                  Text("${list[15]}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                      ))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: detail("OTHER", 200),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            pdfCreate2(list);
          },
          child: Icon(
            Icons.download_rounded,
            size: 25,
            color: Colors.black,
          ),
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

  Widget detail(String name, double width) {
    return Container(
      height: 30,
      width: width,
      color: Colors.black54,
      alignment: Alignment.center,
      child: Text(
        "$name",
        style: TextStyle(color: Colors.white, letterSpacing: 1),
      ),
    );
  }
}
