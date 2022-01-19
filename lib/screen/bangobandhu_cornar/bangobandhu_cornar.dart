import 'package:bijoy/utill/color.dart';
import 'package:flutter/material.dart';

class BangobandhuCornar extends StatefulWidget {
  const BangobandhuCornar({Key? key}) : super(key: key);

  @override
  _BangobandhuCornarState createState() => _BangobandhuCornarState();
}

class _BangobandhuCornarState extends State<BangobandhuCornar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: allColors.appColor,
        title: Text(""),
      ),
      body: Column(
        children: [
          Container(
            child: ListView.builder(
              itemCount: bangoBondhuHome.length,
                itemBuilder: (context, i){
                return Container(
                  child: Text(bangoBondhuHome[i])
                );

                }
            ),
          ),
        ],
      ),
    );
  }
}
List <String> bangoBondhuHome = [
  "jdhf",
  "fdgt",
  "ukjm",
  "wert",
  "jdcbvnhf"
];
AllColors allColors=AllColors();
double buttonHeight = 50;
double buttonFontSize = 20;