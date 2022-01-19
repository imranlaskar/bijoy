import 'package:bijoy/utill/color.dart';
import 'package:flutter/material.dart';

class BangobandhuJiboniDetails extends StatefulWidget {
  String titleText;
  String detailsText;
   BangobandhuJiboniDetails({Key? key,
     required this.titleText,
     required this.detailsText
   }) : super(key: key);

  @override
  _BangobandhuJiboniDetailsState createState() => _BangobandhuJiboniDetailsState();
}

class _BangobandhuJiboniDetailsState extends State<BangobandhuJiboniDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: allColors.appColor,
        title: Text(widget.titleText),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(widget.detailsText,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
AllColors allColors = AllColors();