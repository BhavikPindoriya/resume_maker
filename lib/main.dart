import 'package:flutter/material.dart';
import 'package:resume_application/choose.dart';
import 'package:resume_application/finaldata1.dart';
import 'package:resume_application/finaldata2.dart';
import 'package:resume_application/getdata.dart';
import 'package:resume_application/logopage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => logo(),
        'home': (context) => HomePage(),
        'choose': (context) => chooseui(),
        'set1': (context) => Setdata(),
        'set2': (context) => setdata2(),
      },
    ),
  );
}
