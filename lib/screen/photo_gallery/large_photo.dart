import 'package:flutter/material.dart';

class LargeImage extends StatefulWidget {
  List <String> largeImage;
  int index;
  LargeImage({Key? key, required this.largeImage, required this.index}) : super(key: key);

  @override
  _LargeImageState createState() => _LargeImageState();
}

class _LargeImageState extends State<LargeImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.network(widget.largeImage[widget.index]),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            SizedBox(width: 30,),
            InkWell(
                onTap: (){
                  setState(() {
                    if(widget.index>0)
                      widget.index--;
                  });
                },
                child: Icon(Icons.arrow_back_ios,
                  size: 30, color: Colors.white,
                )
            ),
            Spacer(),
            InkWell(
                onTap: (){
                  setState(() {
                    if(widget.largeImage.length-1>widget.index)
                      widget.index++;
                  });
                },
                child: Icon(Icons.arrow_forward_ios,
                  size: 30, color: Colors.white,
                )
            )
          ],
        ),
      ),
    );
  }
}
