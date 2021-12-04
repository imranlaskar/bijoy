import 'package:bijoy/helper/castom_appbar.dart';
import 'package:bijoy/model/honors_model.dart';
import 'package:bijoy/screen/honors/honors_list_birsesto.dart';
import 'package:flutter/material.dart';

class HonorsPage extends StatefulWidget {
  const HonorsPage({Key? key}) : super(key: key);

  @override
  _HonorsPageState createState() => _HonorsPageState();
}

class _HonorsPageState extends State<HonorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(titile: 'বীরশ্রেষ্ঠদের তালিকা')
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: honorsModelList.length,
                  itemBuilder: (context,index){
                    return SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            child: Text(honorsModelList[index].name,
                              style: TextStyle(
                              fontSize: 20
                            ),
                            ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal
                        ),
                        onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>HonorsListBirsesto(
                                      img: honorsModelList[index].image, name: honorsModelList[index].name,
                                      deg: honorsModelList[index].deg, sector: honorsModelList[index].sector,
                                      gajet: honorsModelList[index].gajetNo, deth: honorsModelList[index].deth)));
                        },
                      ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
HonorsModel honorsModel1 = HonorsModel("assets/birsesto/b1.jpg", "বীরশ্রেষ্ঠ মহিউদ্দিন জাহাঙ্গীর", "ক্যাপ্টেন", "বাংলাদেশ সেনা বাহিনী", "০১", "ডিসেম্বর ১৪, ১৯৭১ ");
HonorsModel honorsModel2 = HonorsModel("assets/birsesto/b2.jpg", "বীরশ্রেষ্ঠ হামিদুর রহমান", "সিপাহী", "বাংলাদেশ সেনা বাহিনী", "০২", "অক্টোবর ২৮, ১৯৭১");
HonorsModel honorsModel3 = HonorsModel("assets/birsesto/b3.jpg", "বীরশ্রেষ্ঠ মোস্তফা কামাল", "সিপাহী", "বাংলাদেশ সেনা বাহিনী", "০৩", "এপ্রিল ১৮, ১৯৭১");
HonorsModel honorsModel4 = HonorsModel("assets/birsesto/b4.jpg", "বীরশ্রেষ্ঠ মোহাম্মদ রুহুল আমিন", "ইঞ্জিনরুম আর্টিফিসার", "বাংলাদেশ নৌ বাহিনী", "০৪", "ডিসেম্বর ১০, ১৯৭১");
HonorsModel honorsModel5 = HonorsModel("assets/birsesto/b5.png", "বীরশ্রেষ্ঠ মতিউর রহমান", "ফ্লাইট লেফটেন্যান্ট", "বাংলাদেশ বিমান বাহিনী", "০৫", "আগস্ট ২০, ১৯৭১");
HonorsModel honorsModel6 = HonorsModel("assets/birsesto/b6.jpg", "বীরশ্রেষ্ঠ মুন্সি আব্দুর রউফ", "ল্যান্স নায়েক", "বাংলাদেশ রাইফেলস", "০৬", "এপ্রিল ৮,১৯৭১");
HonorsModel honorsModel7 = HonorsModel("assets/birsesto/b7.jpg", "বীরশ্রেষ্ঠ নূর মোহাম্মদ শেখ ", "ল্যান্স নায়েক", "বাংলাদেশ রাইফেলস", "০৭", "সেপ্টেম্বর ৫, ১৯৭১");

List <HonorsModel> honorsModelList = [
  honorsModel1,
  honorsModel2,
  honorsModel3,
  honorsModel4,
  honorsModel5,
  honorsModel6,
  honorsModel7
];