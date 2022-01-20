import 'package:bijoy/screen/bangobandhu_cornar/screen/bangobandhu_jiboni.dart';
import 'package:bijoy/screen/bangobandhu_cornar/screen/photo_gallary.dart';
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
        title: Text("বঙ্গবন্ধু কর্ণার"),
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28,),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>BangoBandhuJiboni()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: allColors.appColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Text("বঙ্গবন্ধুর জীবনী",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28,),
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>BongoPhotoGallery()));
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: allColors.appColor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Text("ফটোগ্যালারী",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),

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