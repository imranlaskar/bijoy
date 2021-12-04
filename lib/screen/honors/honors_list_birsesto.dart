import 'package:bijoy/helper/castom_appbar.dart';
import 'package:flutter/material.dart';

class HonorsListBirsesto extends StatefulWidget {
  String img;
  String name;
  String deg;
  String sector;
  String gajet;
  String deth;
  HonorsListBirsesto({Key? key,required this.img,required this.name,
  required this.deg,required this.sector,required this.gajet, required this.deth}) : super(key: key);

  @override
  _HonorsListBirsestoState createState() => _HonorsListBirsestoState();
}

class _HonorsListBirsestoState extends State<HonorsListBirsesto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: widget.name)
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(child:
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(widget.img)
                  )
                ),
                  )),
          SizedBox(height: 20,),
          Text(widget.name,
          style: TextStyle(
            color: Colors.purple,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("পদবী: ",style: TextStyle(fontSize: 20),),
              Text(widget.deg,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("সেক্টর: ",style: TextStyle(fontSize: 20),),
              Text(widget.sector,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("গ্যাজেট নম্বর: ",style: TextStyle(fontSize: 20),),
              Text(widget.gajet,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("মৃত্যুবরণের তারিখ: ",style: TextStyle(fontSize: 20),),
              Text(widget.deth,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),

        ],
      ),
    );
  }
}
