import 'package:bijoy/screen/home_page.dart';
import 'package:bijoy/utill/color.dart';
import 'package:flutter/material.dart';
class ComingSoon extends StatefulWidget {
  String text;
   ComingSoon({Key? key,
     required this.text
   }) : super(key: key);

  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(widget.text,
                style: TextStyle(
                  fontSize: 20
                ),),
            ),
            SizedBox(height: 45,),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  color: allColors.appColor
                ),
                child: Center(
                  child: Text("Go to Home Page",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
AllColors allColors = AllColors();