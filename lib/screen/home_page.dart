import 'package:bijoy/helper/manu_widget.dart';
import 'package:bijoy/screen/about_us.dart';
import 'package:bijoy/screen/bangobandhu_cornar/bangobandhu_cornar.dart';
import 'package:bijoy/screen/honors/honors_home.dart';
import 'package:bijoy/screen/independant/independent_war.dart';
import 'package:bijoy/screen/photo_gallery/photo_gallery.dart';
import 'package:bijoy/screen/quiz/quiz_start_page.dart';
import 'package:bijoy/screen/vactory/vactory_home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

GlobalKey<SliderMenuContainerState> _key =
new GlobalKey<SliderMenuContainerState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: SliderMenuContainer(
          appBarColor: Colors.teal,
          key: _key,
          sliderMenuCloseSize: 0,
          title: Text("HOME",style: TextStyle(color: Colors.white,
              fontSize: width*0.055,fontWeight: FontWeight.w800),),
          shadowColor: Colors.transparent,
          drawerIconColor: Colors.white,
          drawerIconSize: width*0.08,
          //slideDirection: Slider.RIGHT_TO_LEFT,
          //appBarPadding: const EdgeInsets.only(top: 10),
          sliderMenuOpenSize: 300,
          appBarHeight: 100,
          appBarPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          sliderMenu:
          MenuWidget(
            //  onProfilePictureClick: () {},
            onItemClick: (title) {
              _key.currentState!.closeDrawer();
              setState(() {
                title = title;
               if(title=="ABOUT US")
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:
                        (context) => AboutUs()),
                  );
                }else if(title=="Rate this App")
               {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder:
                       (context) => AboutUs()),
                 );
               }else if(title=="More App")
               {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder:
                       (context) => AboutUs()),
                 );
               }
              });
            },
          ),
          sliderMain: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                  ),
                  items: sliderImage
                      .map((item) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: height/4.5,
                      width: width/1.2,
                      child: Image.asset(item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ))
                      .toList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          height: buttonHeight,
                          child: ElevatedButton(
                            child: Text("মুক্তিযুদ্ধ কর্ণার",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: buttonFontSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>IndependantWar()));
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          height: buttonHeight,
                          child: ElevatedButton(
                            child: Text("কর্ণার",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: buttonFontSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>BangobandhuCornar()));
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          height: buttonHeight,
                          child: ElevatedButton(
                            child: Text("বিজয় দিবস",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: buttonFontSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>VactoryHome()));
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          height: buttonHeight,
                          child: ElevatedButton(
                            child: Text("সম্মাননা",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: buttonFontSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder:
                              (context)=>HonorsHomePage()));
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          height: buttonHeight,
                          child: ElevatedButton(
                            child: Text("ফটোগ্যালারী",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: buttonFontSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>PhotoGallery()));
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          height: buttonHeight,
                          child: ElevatedButton(
                            child: Text("কুইজ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: buttonFontSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>QuizStartPage()));
                              },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
double buttonHeight = 50;
double buttonFontSize = 20;

final List<String> sliderImage = [
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
