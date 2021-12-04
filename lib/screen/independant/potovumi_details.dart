import 'package:bijoy/helper/castom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PotovumiDetails extends StatefulWidget {
  String potovumiTitle;
  String potovumiDetails;
  PotovumiDetails({Key? key, required this.potovumiTitle, required this.potovumiDetails}) : super(key: key);

  @override
  _PotovumiDetailsState createState() => _PotovumiDetailsState();
}

class _PotovumiDetailsState extends State<PotovumiDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: widget.potovumiTitle)
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(widget.potovumiDetails,
              style: TextStyle(
                fontSize: 20
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
