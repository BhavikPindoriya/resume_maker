import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chooseui extends StatefulWidget {
  const chooseui({Key? key}) : super(key: key);

  @override
  State<chooseui> createState() => _chooseuiState();
}

class _chooseuiState extends State<chooseui> {
  @override
  Widget build(BuildContext context) {
    dynamic list = ModalRoute.of(context)!.settings.arguments;
    List choose = [list[0],
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
      list[16],
      list[17],];
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 20),
              height: 402,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87, width: 2)),
              child: InkWell(onTap: () {
                Navigator.pushNamed(context, 'set2', arguments:choose);
              },
                  child: Image.asset("assets/image/ui1.png", height: 400)),
            ),
            Container(
              margin: EdgeInsets.only(top: 368, left: 160),
              height: 402,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87, width: 2)),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'set1', arguments: choose);
                },
                child: Image.asset("assets/image/ui2.png", height: 400),
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
}
