import 'package:bijoy/helper/castom_appbar.dart';
import 'package:bijoy/screen/photo_gallery/large_photo.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoGallery extends StatefulWidget {
  const PhotoGallery({Key? key}) : super(key: key);

  @override
  _PhotoGalleryState createState() => _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  Future getImage()async{
    final ref= FirebaseStorage.instance.ref()
        .child("mukti_image/").list();

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
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: "ফটোগ্যালারী",)
      ),
      body:
      Container(
        child: GridView.count(
            crossAxisCount: 3,
        childAspectRatio: 1,
        children: _url.asMap().keys.toList().map((index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              child: Container(
                height: containerHeight,
                  width: containerWidth,
                  child: Image.network(_url[index],fit: BoxFit.cover,)),
              onTap: (){
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>LargeImage(largeImage: _url, index: index,)));
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

List<String> _url=[];
double containerHeight = 90;
double containerWidth = 90;
