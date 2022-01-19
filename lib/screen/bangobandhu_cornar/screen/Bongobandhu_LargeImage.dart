import 'package:flutter/material.dart';

class BangoBandhuLargeImagePage extends StatefulWidget {
  String largeImageList;
   BangoBandhuLargeImagePage({Key? key,
     required this.largeImageList
   }) : super(key: key);

  @override
  _BangoBandhuLargeImagePageState createState() => _BangoBandhuLargeImagePageState();
}

class _BangoBandhuLargeImagePageState extends State<BangoBandhuLargeImagePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset(widget.largeImageList),
    );
  }
}
