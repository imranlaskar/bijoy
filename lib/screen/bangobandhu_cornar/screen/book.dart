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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                color: Colors.white,
                height: 200,
                  width: 170,
                  child: Image.asset("assets/image/book1.jpg")),
              SizedBox(height: 20,),
              Column(
                children: [
                  Text("নাম : অসমাপ্ত আত্মজীবনী",
                    style: TextStyle(
                      fontSize: 18,
                    ),),
                  Text("জুন ২০১২"),
                  Text("দি ইউনিভার্সিটি প্রেস লিমিটেড"),
                  Text("শেখ মুজিবুর রহমান ১৯৫৪ খ্রিষ্টাব্দ পর্যন্ত নিজের জীবনী লিখেছেন। এই গ্রন্থটি ইংরেজিসহ আরও কয়েকটি ভাষায় অনূদিত হয়।"),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                color: Colors.white,
                height: 200,
                  width: 170,
                  child: Image.asset("assets/image/book2.jpg")),
              SizedBox(height: 20,),
              Column(
                children: [
                  Text("নাম : কারাগারের রোজনামচা",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text("মার্চ ২০১৭"),
                  Text("বাংলা একাডেমি"),
                  Text("গ্রন্থটি ১৯৬৬ খ্রিষ্টাব্দে শেখ মুজিবুর রহমানের কারাভোগের দিনলিপি। গ্রন্থটির নামকরণ করেন তার কনিষ্ঠা কন্যা শেখ রেহানা।"),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                color: Colors.white,
                height: 200,
                  width: 170,
                  child: Image.asset("assets/image/book3.jpg")),
              SizedBox(height: 20,),
              Column(
                children: [
                  Text("নাম : আমার দেখা নয়াচীন"),
                  Text("ফেব্রুয়ারি ২০২০"),
                  Text("বাংলা একাডেমি"),
                  Text("১৯৫২ খ্রিষ্টাব্দের অক্টোবরে গণচীনের পিকিংয়ে অনুষ্ঠিত এশীয় ও প্রশান্ত মহাসাগরীয় শান্তি সম্মেলন উপলক্ষে শেখ মুজিবের চীন ভ্রমণের অভিজ্ঞতা নিয়ে রচিত।"),
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}


AllColors allColors = AllColors();