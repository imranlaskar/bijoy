import 'package:bijoy/utill/color.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("এই অ্যাপ বাংলাদেশের মুক্তিযুদ্ধের বিভিন্ন বিষয় নিয়ে তৈরি করা হয়েছে। এখানে মুক্তিযুদ্ধ শুরু থেকে শেষ পর্যন্ত ঘটনাগুলো তুলে ধরার চেষ্টা করা হয়েছে। এই অ্যাপে বঙ্গবন্ধু কর্ণার, মুক্তিযুদ্ধে অংশগ্রহন করেছে এমন বিশিষ্ট ব্যাক্তিদের সম্মাননা সহ তালিকা, যুদ্ধের দুষ্প্রাপ্য কিছু ফটো নিয়ে গ্যালারি এবং যুদ্ধ বিষয়ক কুইজ রয়েছে।",
                style: TextStyle(
                    fontSize: 20,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 45,),
            Text("This app is made by Imran Laskar.",style: TextStyle(fontSize: 20),),
            SizedBox(height: 5,),
            Text("Student of 'Training for Mobile Application Development'"),
            Text("(Cross Platform)"),
            SizedBox(height: 5,),
            Text("Venue: Gopalganj-2",style: TextStyle(fontSize: 20),),
            SizedBox(height: 5,),
            Text("Batch: AB3-044",style: TextStyle(fontSize: 20),),
            SizedBox(height: 5,),
            Text("Trainar: Jannatul Ferdaus",style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
