import 'package:bijoy/helper/castom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sector extends StatefulWidget {
  const Sector({Key? key}) : super(key: key);

  @override
  _SectorState createState() => _SectorState();
}

class _SectorState extends State<Sector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: 'সেক্টর সমূহ')
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("১নং সেক্টর",
              style: TextStyle(
                fontSize: sectorTitleFontSize,
                fontWeight: FontWeight.bold,
                color: sectorTitleColor
              ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("১$sectorChilo চট্টগ্রাম, পার্বত্য চট্টগ্রাম ও নোয়াখালী জেলার মুহুরী নদীর পূর্বাংশ পর্যন্ত।\n \n$sectorComandar\nমেজর জিয়াউর রহমান (এপ্রিল - জুন), মেজর রফিকুল ইসলাম (জুন-ফেব্ৰুয়ারি) ",
              style: TextStyle(
                fontSize: 20
              ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("২নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("২$sectorChiloচাঁদপুর জেলা, নোয়াখালী জেলা, কুমিল্লা জেলার আখাউড়া-ভৈরব রেললাইন পর্যন্ত এবং ফরিদপুর ও ঢাকার অংশবিশেষ। \n \n$sectorComandar \nমেজর খালেদ মোশাররফ (এপ্রিল-সেপ্টেম্বর),\nমেজর এ.টি.এম. হায়দার (সেপ্টেম্বর-ফেব্ৰুয়ারি) ",
              style: TextStyle(
                fontSize: 20
              ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("৩নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("৩$sectorChiloসিলেট জেলার হবিগঞ্জ মহকুমা, কিশোরগঞ্জ মহকুমা, আখাউড়া-ভৈরব রেললাইন থেকে উত্তর-পূর্ব দিকে কুমিল্লা ও ঢাকা জেলার অংশবিশেষ ।\n\n$sectorComandar\nমেজর কে.এম. শফিউল্লাহ (এপ্রিল-সেপ্টেম্বর), \nমেজর এ.এন.এম. নুরুজ্জামান (সেপ্টেম্বর-ফেব্ৰুয়ারি)",
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("৪নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("৪$sectorChilo সিলেট জেলার পূর্বাঞ্চল এবং খোয়াই-শায়েস্তাগঞ্জ রেললাইন বাদে পূর্ব ও উত্তর দিকে সিলেট-ডাউকি সড়ক পর্যন্ত।\n\n$sectorComandar \nমেজর সি.আর. দত্ত ",
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("৫নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("৫$sectorChiloসিলেট-ডাউকি সড়ক থেকে সিলেট জেলার সমগ্র উত্তর ও পশ্চিমাঞ্চল পর্যন্ত ।\n\n$sectorComandar\nমীর শওকত আলী ",
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("৬নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("৬$sectorChiloসমগ্র রংপুর জেলা এবং দিনাজপুর জেলার ঠাকুরগাঁও মহকুমা ।\n\n$sectorComandar\nউইং কমান্ডার এম.কে. বাশার",
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("৭নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("৭$sectorChiloদিনাজপুর জেলার দক্ষিণাঞ্চল, বগুড়া, রাজশাহী এবং পাবনা জেলা ।\n\n$sectorComandar\nমেজর কাজী নুরুজ্জামান",
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("৮নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("৮$sectorChiloসমগ্র কুষ্টিয়া ও যশোর জেলা, ফরিদপুরের অধিকাংশ এলাকা এবং দৌলতপুর-সাতক্ষীরা সড়কের উত্তরাংশ ।\n\n$sectorComandar\nমেজর আবু ওসমান চৌধুরী (এপ্রিল- আগস্ট),\nমেজর এম.এ. মনজুর (আগস্ট-ফেব্ৰুয়ারি) ",
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("৯নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("৯$sectorChiloদৌলতপুর-সাতক্ষীরা সড়ক থেকে খুলনার দক্ষিণাঞ্চল এবং সমগ্র বরিশাল ও পটুয়াখালী জেলা ।\n\n$sectorComandar\nমেজর এম.এ. জলিল (এপ্রিল-ডিসেম্বর প্রথমার্ধ), \nমেজর জয়নুল আবেদীন (ডিসেম্বরের অবশিষ্ট দিন) ",
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("১০নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("১০নং সেক্টর এর কোনো আঞ্চলিক সীমানা নেই। নৌবাহিনীর কমান্ডো দ্বারা গঠিত। শত্রুপক্ষের নৌযান ধ্বংসের জন্য বিভিন্ন সেক্টরে পাঠানো হত । \n \n১০ নং সেক্টরটি ছিল কমান্ডার-ইন-চিফের (সি-ইন-সি) সরাসরি তত্ত্বাবধানে, যার মধ্যে নৌ-বাহিনী ও সি-ইন-সির বিশেষ বাহিনীও অন্তর্ভুক্ত ছিল। তবে উপযুক্ত কোনো কর্মকর্তা ছিলেননা বলে ১০ নম্বর সেক্টরের (নৌ সেক্টর) কোনো সেক্টর অধিনায়ক ছিলনা; এ সেক্টরের গেরিলারা যখন যে সেক্টরে অভিযান চালাতেন, তখন সে সেক্টরের সেক্টর অধিনায়কের অধীনে থাকতেন। গেরিলাদেৱ বেশির ভাগ প্রশিক্ষণ শিবির ছিল সীমান্ত এলাকায় এবং ভারতের সহায়তায় গেরিলা প্রশিক্ষণ লাভ করত। সম্মুখ যুদ্ধে লড়াই করার জন্যে তিনটি ব্রিগেড (১১ ব্যাটালিয়ন) তৈরি করা হয়। এছাড়াও প্রায় ১,০০০ গেরিলা প্রশিক্ষণ দিয়ে দেশের ভেতরে নিয়মিত বিভিন্ন অভিযানে পাঠানো হতো।",
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
            Center(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("১১নং সেক্টর",
                style: TextStyle(
                    fontSize: sectorTitleFontSize,
                    fontWeight: FontWeight.bold,
                    color: sectorTitleColor
                ),),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("১১$sectorChiloকিশোরগঞ্জ মহকুমা বাদে সমগ্র ময়মনসিংহ ও টাঙ্গাইল জেলা এবং নগরবাড়ি-আরিচা থকে ফুলছড়ি-বাহাদুরাবাদ পর্যন্ত যমুনা নদী ও তীর অঞ্চল ।\n\n$sectorComandar\nমেজর জিয়াউর রহমান (জুন - অক্টোবর),\nমেজর আবু তাহের (অক্টোবর-নভেম্বর),\nস্কোয়ড্ৰণ লীডাৱ এম হামিদুল্লাহ খান (নভেম্বর-ফেব্ৰুয়ারি) ",
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
double sectorTitleFontSize = 30;
Color sectorTitleColor = Colors.purple;
String sectorChilo = "নং সেক্টর ছিলো ";
String sectorComandar = "এই সেক্টরের কমান্ডার ছিলেন: ";
