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
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28,top: 10),
            child: InkWell(
              onTap: (){

              },
              child: Container(
                  color: allColors.appColor,
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Text("bangoBondhuHome[i]",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28,top: 10),
            child: InkWell(
              onTap: (){

              },
              child: Container(
                  color: allColors.appColor,
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Text("bangoBondhuHome[i]",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28,top: 10),
            child: InkWell(
              onTap: (){

              },
              child: Container(
                  color: allColors.appColor,
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Text("bangoBondhuHome[i]",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
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