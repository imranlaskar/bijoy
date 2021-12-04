import 'package:flutter/material.dart';

class LargeImage extends StatefulWidget {
  String largeImage;
  LargeImage({Key? key, required this.largeImage}) : super(key: key);

  @override
  _LargeImageState createState() => _LargeImageState();
}

class _LargeImageState extends State<LargeImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset(widget.largeImage),
    );
  }
}
