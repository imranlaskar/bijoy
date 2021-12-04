import 'package:bijoy/helper/castom_appbar.dart';
import 'package:bijoy/screen/honors/bir_uttom_details.dart';
import 'package:bijoy/screen/honors/honors.dart';
import 'package:flutter/material.dart';

class HonorsHomePage extends StatefulWidget {
  const HonorsHomePage({Key? key}) : super(key: key);

  @override
  _HonorsHomePageState createState() => _HonorsHomePageState();
}

class _HonorsHomePageState extends State<HonorsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: 'সম্মাননা')
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal),
                      onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>HonorsPage()));
                  }, child: Text("বীরশ্রেষ্ঠ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal),
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>BirUttomDetailsPage()));
                        },
                      child: Text("বীর উত্তম",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal),
                      onPressed: (){

                      }, child: Text("বীর বিক্রম",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.teal),
                      onPressed: (){

                      }, child: Text("বীর প্রতীক",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
