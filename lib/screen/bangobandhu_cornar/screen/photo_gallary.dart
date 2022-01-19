import 'package:bijoy/screen/bangobandhu_cornar/screen/Bongobandhu_LargeImage.dart';
import 'package:flutter/material.dart';

class BongoPhotoGallery extends StatefulWidget {
  const BongoPhotoGallery({Key? key}) : super(key: key);

  @override
  _BongoPhotoGalleryState createState() => _BongoPhotoGalleryState();
}

class _BongoPhotoGalleryState extends State<BongoPhotoGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1,
          children: imageList.map((item){
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                child: Container(
                    height: containerHeight,
                    width: containerWidth,
                    child: Image.asset(item,fit: BoxFit.cover,)),
                onTap: (){
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>BangoBandhuLargeImagePage(
                            largeImageList: item
                        )));
                  });
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

double containerHeight = 90;
double containerWidth = 90;

List <String> imageList = [
  "assets/image/1.jpg",
  "assets/image/2.jpg",
  "assets/image/1-8.jpg",
  "assets/image/3.jpg",
  "assets/image/4.png",
  "assets/image/5.jpg",
  "assets/image/6.jpg",
  "assets/image/7.png",
  "assets/image/8.jpg",
  "assets/bangobondhu/2.jpg",
  "assets/bangobondhu/3.jpg",
  "assets/bangobondhu/4.jpg",
  "assets/bangobondhu/7.jpg",
  "assets/bangobondhu/8.jpg",
  "assets/bangobondhu/10.jpg",
  "assets/bangobondhu/14.jpg"
];