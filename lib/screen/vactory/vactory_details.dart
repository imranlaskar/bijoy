import 'package:bijoy/helper/castom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VactoryDetails extends StatefulWidget {
  String bijoyTitle;
  String bijoyDetails;
  VactoryDetails({Key? key, required this.bijoyTitle, required this.bijoyDetails}) : super(key: key);

  @override
  _VactoryDetailsState createState() => _VactoryDetailsState();
}

class _VactoryDetailsState extends State<VactoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: widget.bijoyTitle)
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(widget.bijoyDetails,style: TextStyle(
                fontSize: 20
              ),),
            )
          ],
        ),
      ),
    );
  }
}
