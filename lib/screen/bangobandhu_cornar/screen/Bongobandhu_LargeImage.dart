import 'package:flutter/material.dart';

class BangoBandhuLargeImagePage extends StatefulWidget {
  List <String> largeImageList;
  int index;
   BangoBandhuLargeImagePage({Key? key,
     required this.largeImageList,
     required this.index
   }) : super(key: key);

  @override
  _BangoBandhuLargeImagePageState createState() => _BangoBandhuLargeImagePageState();
}

class _BangoBandhuLargeImagePageState extends State<BangoBandhuLargeImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.network(widget.largeImageList[widget.index]),
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
                    if(widget.largeImageList.length-1>widget.index)
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
