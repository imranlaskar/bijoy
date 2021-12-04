import 'package:bijoy/helper/castom_appbar.dart';
import 'package:bijoy/screen/independant/potovumi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MuktiJuddhKornerDeteils extends StatefulWidget {
  String muktiKornerList;
  String muktiKornerListDetails;
  MuktiJuddhKornerDeteils({Key? key, required this.muktiKornerList,required this.muktiKornerListDetails}) : super(key: key);

  @override
  _MuktiJuddhKornerDeteilsState createState() => _MuktiJuddhKornerDeteilsState();
}

class _MuktiJuddhKornerDeteilsState extends State<MuktiJuddhKornerDeteils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: widget.muktiKornerList)
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(widget.muktiKornerListDetails,
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
