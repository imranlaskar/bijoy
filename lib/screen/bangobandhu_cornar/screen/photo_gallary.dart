import 'package:bijoy/screen/bangobandhu_cornar/screen/Bongobandhu_LargeImage.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class BongoPhotoGallery extends StatefulWidget {
  const BongoPhotoGallery({Key? key}) : super(key: key);

  @override
  _BongoPhotoGalleryState createState() => _BongoPhotoGalleryState();
}
List<String> _url=[];
class _BongoPhotoGalleryState extends State<BongoPhotoGallery> {

  Future getImage()async{
    final ref= FirebaseStorage.instance.ref()
        .child("bongobandhu_image/").list();

    ref.then((value) {
      value.items.forEach((element)async {
        String url= await element.getDownloadURL();
         _url.add(url);
         setState(() {
           _url;
         });
      });
    });
  }
  @override
  void initState() {
    super.initState();
    getImage();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _url.isEmpty ? Center(
          child: const CircularProgressIndicator()):
       Container(
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1,
          children: _url.asMap().keys.toList().map((index){
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: InkWell(
                child: Container(
                    height: containerHeight,
                    width: containerWidth,
                    child: AnimatedContainer(
                      height: 90,
                        width: 90,
                        duration: Duration(milliseconds: 1000),
                        child: Image.network(_url[index],fit: BoxFit.cover,))),
                onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>BangoBandhuLargeImagePage(
                            largeImageList: _url, index: index,
                        )));
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