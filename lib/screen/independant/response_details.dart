import 'package:bijoy/helper/castom_appbar.dart';
import 'package:flutter/material.dart';

class ResponseDetails extends StatefulWidget {
  String intCountryName;
  String intCountryResponse;
  ResponseDetails({Key? key,required this.intCountryName,required this.intCountryResponse}) : super(key: key);

  @override
  _ResponseDetailsState createState() => _ResponseDetailsState();
}

class _ResponseDetailsState extends State<ResponseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: widget.intCountryName)
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(widget.intCountryResponse,
              style: TextStyle(
                fontSize: 20
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
