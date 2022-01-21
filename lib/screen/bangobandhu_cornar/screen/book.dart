import 'package:bijoy/repositore/book_repo.dart';
import 'package:bijoy/utill/color.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: allColors.appColor,
        title: Text("রচিত গ্রন্থাবলি"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: bookRipo.allBookModel.length,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)
                      ),
                    border: Border.all(
                      width: 2,
                      color: Colors.black
                    )
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Container(
                          color: Colors.white,
                          height: 250,
                          width: 180,
                          child: Image.asset(bookRipo.allBookModel[index].img)),
                      SizedBox(height: 20,),
                      Text(bookRipo.allBookModel[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 25,
                        ),),
                      SizedBox(height: 10,),
                      Text(bookRipo.allBookModel[index].releaseDate,
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18),
                        child: Text(bookRipo.allBookModel[index].sompadok,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0,right: 18),
                        child: Text(bookRipo.allBookModel[index].details,
                          style: TextStyle(
                            fontSize: 22,
                          ),),
                      ),
                    ],
                  ),
                ),
              );
            }
        )
      ),
    );
  }
}

BookRipo bookRipo = BookRipo();
AllColors allColors = AllColors();