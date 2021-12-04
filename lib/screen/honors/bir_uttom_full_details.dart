import 'package:bijoy/helper/castom_appbar.dart';
import 'package:bijoy/provider/bir_uttom_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BirUttomFullDetails extends StatefulWidget {
  String image;
  String name;
  String sector;
  String deg;
  String gajet;
  BirUttomFullDetails({Key? key,required this.image,required this.name,required this.sector,required this.deg,required this.gajet}) : super(key: key);

  @override
  _BirUttomFullDetailsState createState() => _BirUttomFullDetailsState();
}

class _BirUttomFullDetailsState extends State<BirUttomFullDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: 'বীরশ্রেষ্ঠদের তালিকা')
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
             Container(
               height: 150,
                 width: 150,
                 child: Image.network(widget.image)),
             SizedBox(height: 25,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("নাম : ",
                   style: TextStyle(
                     fontSize: 25,
                   ),),
                 Text(widget.name,
                   style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Colors.purple
                   ),),
               ],
             ),
              SizedBox(height: 15,),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("যুদ্ধকালীন সেক্টর : ",
                     style: TextStyle(
                     fontSize: 20,
                   ),),
                   Text(widget.sector,
                     style: TextStyle(
                       fontSize: 20,
                         fontWeight: FontWeight.bold
                     ),),
                 ],
               ),
             ),
              SizedBox(height: 15,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("পদবি: ",
               style: TextStyle(
               fontSize: 20,
             ),),
                 Text(widget.deg,
                   style: TextStyle(
                     fontSize: 20,
                       fontWeight: FontWeight.bold
                   ),),
               ],
             ),
              SizedBox(height: 15,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("গ্যাজেট নং: ",
                   style: TextStyle(
                     fontSize: 20,
                   ),),
                 Text(widget.gajet,
                   style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold
                   ),),
               ],
             ),
            ],
            ),
        ),
      ),
    );
  }
}
