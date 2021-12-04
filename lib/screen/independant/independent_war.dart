import 'package:bijoy/helper/castom_appbar.dart';
import 'package:bijoy/screen/independant/MuktiJuddh_KornerDue_Deteils.dart';
import 'package:bijoy/screen/independant/independent_wer_time.dart';
import 'package:bijoy/screen/independant/international_response.dart';
import 'package:bijoy/screen/independant/potovumi.dart';
import 'package:bijoy/screen/independant/sector.dart';
import 'package:flutter/material.dart';

class IndependantWar extends StatefulWidget {
  const IndependantWar({Key? key}) : super(key: key);

  @override
  _IndependantWarState createState() => _IndependantWarState();
}
double buttonHeight = 50;
double buttonFontSize = 20;

class _IndependantWarState extends State<IndependantWar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(titile: 'মুক্তিযুদ্ধ কর্ণার')
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: buttonHeight,
                  child: ElevatedButton(
                    child: Text("পটভূমি",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: buttonFontSize,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Potovumi()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 16,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: buttonHeight,
                  child: ElevatedButton(
                    child: Text("স্বাধীনতা যুদ্ধ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: buttonFontSize,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>IndependantWarWithTime()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 16,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: buttonHeight,
                  child: ElevatedButton(
                    child: Text("সেক্টর সমূহ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: buttonFontSize,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Sector()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Expanded(
                  child: ListView.builder(
                    itemCount: muktijuddhKornarDueList.length,
                      itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              child: Text(muktijuddhKornarDueList[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: buttonFontSize,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.teal,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  )
                              ),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>MuktiJuddhKornerDeteils(
                                        muktiKornerList: muktijuddhKornarDueList[index],
                                        muktiKornerListDetails: muktiJuddhKornerDueDeteils[index])));
                              },
                            ),
                          ),
                        ),
                      );
                      })
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  height: buttonHeight,
                  child: ElevatedButton(
                    child: Text("আন্তর্জাতিক প্রতিক্রিয়া",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: buttonFontSize,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>InterNationalResponse()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 57,)
            ],
          ),
        ),
      ),
    );
  }
}
List <String> muktijuddhKornarDueList = [
  "ভারতের অংশগ্রহণ",
  "বিমান এবং নৌযুদ্ধ",
  "আত্মসমর্পণ ও ফলাফল",
  "নৃশংসতা"
];
List <String> muktiJuddhKornerDueDeteils = [
"”২৫ শে মার্চ থেকে পৃথিবীর সকল নিরপেক্ষ মানুষ বাংলাদেশের মারাত্মক ঘটনাগুলি প্রত্যক্ষ করে অব্যক্তভাবে সাড়ে সাত কোটি মানুষের বিদ্রোহকে স্বীকৃতি দিয়েছে, এমন একটি জনগোষ্ঠী যারা এই সিদ্ধান্তে পৌঁছাতে বাধ্য হয়েছিল যে, নিজস্ব জীবন কিংবা স্বাধীনতা, এবং কপালে সুখ জোটার সম্ভাবনা, কোনটাই তাদের কাছে ছিল না।”\n — ইন্দিরা গান্ধী, রিচার্ড নিক্সনের প্রতি চিঠি, ১৫ ডিসেম্বর ১৯৭১\n \nভারতীয় প্রধানমন্ত্রী সবশেষে বলেন যে, অর্থনৈতিকভাবে লক্ষ লক্ষ শরণার্থীর ভার কাঁধে নেওয়ার চেয়ে ভারতের পক্ষে পাকিস্তানের বিরুদ্ধে যুদ্ধে অবতীর্ণ হওয়াই বরং অধিক উত্তম।  ১৯৭১ সালের শুরুর দিকে ২৮ এপ্রিলে, ভারতীয় মন্ত্রিসভা জেনারেল মানেকশকে (চিফ অব স্টাফ কমিটির চেয়ারম্যান) পাকিস্তানের বিষয়টিকে হাতে তুলে নিতে বলেন। অতীতে ভারত ও পাকিস্তানের বৈরী সম্পর্ক পাকিস্তানের গৃহযুদ্ধে হস্তক্ষেপের ভারতের সিদ্ধান্তকে আরও তরান্বিত করে। ফলস্বরূপ, ভারত সরকার মুক্তি বাহিনী সমর্থন করে জাতিগত বাঙালিদের জন্য একটি পৃথক রাষ্ট্র গঠনের পক্ষে সমর্থন করার সিদ্ধান্ত নেয়। ভারতের রিসার্চ অ্যান্ড অ্যানালাইসিস উইং (র) পূর্ব পাকিস্তানের বিদ্রোহীদের সংগঠিত করে, প্রশিক্ষণ দেয় এবং তাদের অস্ত্র সরবরাহের মাধ্যমে সহায়তা করে। ফলস্বরূপ, মুক্তিবাহিনী পূর্ব পাকিস্তানে পাকিস্তানি সামরিক বাহিনীকে হয়রানি করতে সফল হয়, এভাবে ডিসেম্বরের গোড়ার দিকে পুরোপুরি ভারতীয় সামরিক হস্তক্ষেপের পক্ষে পরিস্থিতি তৈরি করা হয়।\n \nডিসেম্বরের ৩ তারিখ ভারতের ওপর বিমান হামলা চালায়। অনেক বিশেষজ্ঞের মতে, মুক্তিযোদ্ধাদের আক্রমণ ও পাল্টা আক্রমণে ক্রমান্বয়ে পাকিস্তানি সামরিক বাহিনীর অবস্থা শোচনীয় হয়ে পড়ায় উপায়ান্তর না-দেখে ঘটনা ভিন্ন খাতে পরিচালিত করতে তারা যুদ্ধকে আন্তর্জাতিক রূপ দেয়ার প্রচেষ্টা চালাতে এই হামলা করে। আবার অনেক বিশেষজ্ঞের মতে, মুক্তিযুদ্ধে ভারত বাংলাদেশকে প্রত্যক্ষভাবে সাহায্য করায় যুদ্ধে ভারতকে পাকিস্তানের বিরুদ্ধে উস্কানিদাতা মনে করে এবং ভারতের সঙ্গে পাকিস্তানের পূর্ব শত্রুতার জের ধরে পাকিস্তান এই হামলা চালায়। পাকিস্তান বিমান বাহিনী (পিএএফ) ১৯৭১ সালের ৩ ডিসেম্বর ভারতীয় বিমানবাহিনীর ঘাঁটিগুলিতে প্রাক-উচ্ছেদ ধর্মঘট শুরু করে। হামলাটি ছয় দিনের যুদ্ধ চলাকালীন ইস্রায়েলি বিমান বাহিনীর অপারেশন ফোকাসের আদলে করা হয়, এবং স্থলভাগে ভারতীয় বিমানবাহিনী বিমানগুলিকে পর্যুদস্ত করার পরিকল্পনা করে। ভারত এই ধর্মঘটকে অপ্রকাশিত আগ্রাসনের একটি উন্মুক্ত আচরণ হিসাবে দেখে, যা ভারত-পাকিস্তান যুদ্ধের আনুষ্ঠানিক শুরু হিসাবে চিহ্নিত হয়। ১৯৭১ সালের ৩ ডিসেম্বর বিকেল পাঁচটায় রেডিও পাকিস্তান সংক্ষিপ্ত এক বিশেষ সংবাদ প্রচার করে যে ‘ভারত পশ্চিম পাকিস্তানের সীমান্তজুড়ে আক্রমণ শুরু করেছে। বিস্তারিত খবর এখনো আসছে।’ পাঁচটা ৯ মিনিটে পেশোয়ার বিমানবন্দর থেকে ১২টি যুদ্ধবিমান উড়ে যায় কাশ্মীরের শ্রীনগর ও অনন্তপুরের উদ্দেশ্যে এবং সারগোদা বিমানঘাঁটি থেকে আটটি মিরেজ বিমান উড়ে যায় অমৃতসর ও পাঠানকোটের দিকে। দুটি যুদ্ধবিমান বিশেষভাবে প্রেরিত হয় ভারতীয় ভূখণ্ডের গভীরে আগ্রায় আঘাত করার উদ্দেশ্যে। মোট ৩২টি যুদ্ধবিমান অংশ নেয় এই আক্রমণে। ৩ ডিসেম্বর বিকেলে প্রধানমন্ত্রী ইন্দিরা গান্ধী কোলকাতার ব্রিগেড প্যারেড ময়দানে এক বিশাল জনসভায় বক্তৃতাদানকালে ভারতের বিভিন্ন বিমান ঘাঁটিতে পাকিস্তানের উল্লিখিত বিমান-আক্রমণ শুরু হয়। অবিলম্বে তিনি দিল্লী প্রত্যাবর্তন করেন। মন্ত্রিসভার জরুরি বৈঠকের পর মধ্যরাত্রির কিছু পরে বেতার বক্তৃতায় তিনি জরুরি অবস্থা ঘোষণা করে বলেন, এতদিন ধরে “বাংলাদেশে যে যুদ্ধ চলে আসছিল তা ভারতের বিরুদ্ধে যুদ্ধে পরিণত হয়েছে।” ভারতও এর জবাবে পাকিস্তানের বিরুদ্ধে 'যুদ্ধাবস্থা' ঘোষণা করে এবং তাদের পশ্চিম সীমান্তে পাকিস্তানের হামলা প্রতিহত করে। এই হামলার প্রতিক্রিয়া হিসাবে, ভারত ও পাকিস্তান উভয়ই ”দুই দেশের মধ্যে যুদ্ধাবস্থার অস্তিত্ব” আনুষ্ঠানিকভাবে স্বীকার করে নেয় যদিও উভয়ই সরকার তখনো আনুষ্ঠানিকভাবে কোন যুদ্ধের ঘোষণা জারি করেনি।\n \nভারতের সামরিক বাহিনী বাংলাদেশের মুক্তিবাহিনীর সঙ্গে যুক্ত হয়ে যৌথবাহিনী তৈরি করে বাংলাদেশের অভ্যন্তরে প্রবেশ করে। ৪ ডিসেম্বর থেকে ভারতীয় স্থলবাহিনীর সম্মুখ অভিযান শুরু হয় চারটি অঞ্চল থেকে:\n (১) পূর্বে ত্রিপুরা রাজ্য থেকে তিন ডিভিশনের সমবায়ে গঠিত ৪র্থ কোর সিলেট-ব্রাহ্মণবাড়িয়া-কুমিল্লা-নোয়াখালী অভিমুখে\n(২) উত্তরাঞ্চল থেকে দুই ডিভিশনের সমবায়ে গঠিত ৩৩তম কোর রংপুর-দিনাজপুর-বগুড়া অভিমুখে\n(৩) পশ্চিমাঞ্চল থেকে দুই ডিভিশনের সমবায়ে গঠিত ২য় কোর যশোর-খুলনা-কুষ্টিয়া-ফরিদপুর অভিমুখে\n(৪) মেঘালয় রাজ্যের তুরা থেকে ডিভিশন অপেক্ষা কম আরেকটি বাহিনী (১০১ কমিউনিকেশন জোন) জামালপুর-ময়মনসিংহ অভিমুখে।\n \nতিন জন ভারতীয় কর্পস পূর্ব পাকিস্তানের স্বাধীনকরণে জড়িত ছিলেন। তাদের পাশাপাশি প্রায় তিন ব্রিগেড মুক্তিবাহিনী এবং আরও অনেকে তাদের সাথে লড়াই করে যারা অনিয়মিতভাবে লড়াই করে তাদের সমর্থন করেছিল। এটি পাকিস্তানি সেনাবাহিনীর তিনটি বিভাগের চেয়ে অনেক উন্নত ছিল। যৌথবাহিনীর প্রবল আক্রমণের মুখে সারা দেশের সীমান্তবর্তী যুদ্ধক্ষেত্রগুলো থেকে পাকিস্তানিরা পিছু হটতে শুরু করে। একের পর এক পাকিস্তানি ঘাঁটির পতন হতে থাকে। পাকিস্তানিরা অল্প কিছু জায়গায় তাদের সামরিক শক্তি জড় করেছিল; যৌথবাহিনী তাদের এড়িয়ে অত্যন্ত দ্রুতগতিতে ঢাকার দিকে এগিয়ে যেতে থাকে। বাংলাদেশের জনগণও স্বতঃস্ফূর্তভাবে মুক্তিযোদ্ধাদের সহায়তায় এগিয়ে আসে। আনুষ্ঠানিক যুদ্ধ ঘোষণার মাত্র ১৩ দিনের মাথায় যৌথবাহিনী ঢাকার দোরগোড়ায় পৌঁছে যায়। এর আগেই বিমান হামলা চালিয়ে পাকিস্তানি বিমানবাহিনীকে পরাস্ত করে ঢাকার সকল সামরিক বিমান ঘাঁটির রানওয়ে বিধ্বস্ত করে দেয়া হয়। তৎকালীন পাকিস্তানি ঊর্ধ্বতন কর্মকর্তারা পশ্চিম পাকিস্তান থেকে আশ্বাস পেয়েছিলেন উত্তরে চীন ও দক্ষিণে মার্কিন যুক্তরাষ্ট্র থেকে তাদের জন্য সহায়তা আসবে, কিন্তু বাস্তবে তার দেখা মেলেনি। ভারতীয়রা দ্রুত দেশটিকে ছাপিয়ে যায়, এবং কঠোরভাবে সুরক্ষিত দুর্গগুলি অবরোধ ও দখল করে। মুক্তি বাহিনীর গেরিলা আক্রমণ মোকাবিলার জন্য সীমান্তের আশেপাশে ছোট ছোট ইউনিট আকারে বাহিনী মোতায়েন করার কারণে পাকিস্তানি বাহিনী কার্যকরভাবে ভারতীয় আক্রমণ মোকাবেলা করতে অক্ষম ছিল।  ঢাকাকে রক্ষা করতে না পেরে পাকিস্তানিরা ১৯৭১ সালের ১৬ই ডিসেম্বর আত্মসমর্পণ করে।",
"ভারতীয় বিমানবাহিনী পাকিস্তানের বিরুদ্ধে বেশ কয়েকটি আক্রমণ চালায় এবং এক সপ্তাহের মধ্যেই আইএএফ বিমান পূর্ব পাকিস্তানের আকাশে আধিপত্য বিস্তার করে। প্রথম সপ্তাহের শেষে এটি প্রায়-সম্পূর্ণ আকাশপথের আধিপত্য অর্জন করে, কারণ পূর্ব পাকিস্তানের বিমান বাহিনী, পিএএফ নং-৪৪ স্কোয়াড্রন তেজগাঁও, কুর্মিটোলা, লালমনিরহাট এবং শমশেরনগরে ভারত ও বাংলাদেশের বিমান হামলার কারণে ভূপাতিত হয়। বাহক আইএনএস বিক্রান্ত থেকে হকার সি হকস নামক যুদ্ধবিমান চট্টগ্রাম, বরিশাল এবং কক্সবাজারেও হামলা চালিয়ে পাকিস্তান নৌবাহিনীর পূর্ব শাখা ধ্বংস করে এবং কার্যকরভাবে পূর্ব পাকিস্তান বন্দরগুলিকে অবরুদ্ধ করে দিয়ে আটকা পড়ে থাকা পাকিস্তানি সৈন্যদের পালানোর সকল পথ বন্ধ করে দেয়। উদীয়মান বাংলাদেশ নৌবাহিনী (পাকিস্তানি নৌবাহিনী থেকে বিচ্ছিন্ন হওয়া কর্মকর্তা ও নাবিকদের নিয়ে গঠিত) সামুদ্রিক যুদ্ধে ভারতীয়দের সহায়তা করে ও আক্রমণ চালায়, বিশেষত অপারেশন জ্যাকপটের সময়। ",
"ডিসেম্বরের শুরুতে বাংলাদেশের স্বাধীনতা যুদ্ধে ভারত প্রত্যক্ষভাবে জড়িয়ে পড়ে। মুক্তিবাহিনী ও ভারতীয় সামরিক বাহিনীর সম্মিলিত আক্রমণের মুখে ইতোমধ্যে পর্যুদস্ত ও হতোদ্যম পাকিস্তানি সামরিক বাহিনী আত্মসমর্পণের সিদ্ধান্ত গ্রহণ করে। ১৬ ডিসেম্বর ঢাকার রেসকোর্স ময়দানে পাকিস্তানি সামরিক কর্মকর্তারা প্রায় ৯৩,০০০ সৈন্যসহ আনুষ্ঠানিকভাবে আত্মসমর্পণ করেন। এরই মাধ্যমে নয় মাসব্যাপী রক্তক্ষয়ী মুক্তিযুদ্ধের অবসান ঘটে; পাকিস্তানের অন্তর্ভুক্ত পূর্ব পাকিস্তান নামক অংশ একটি স্বাধীন রাষ্ট্র হিসেবে বাংলাদেশ নামে স্বাধিকার ও স্বায়ত্বশাসন লাভ করে। \n \n৯ ডিসেম্বর এক বার্তায় গভর্নর মালিক পাকিস্তানের রাষ্ট্রপতিকে জানান, ‘সামরিক পরিস্থিতি নাজুক হয়ে পড়েছে। পশ্চিমে শত্রু ফরিদপুরের কাছে চলে এসেছে এবং পূর্বে লাকসাম ও কুমিল্লায় আমাদের বাহিনীকে পাশ কাটিয়ে মেঘনা নদীর ধারে পৌঁছেছে। বাইরের সাহায্য যদি না-আসে, তবে শত্রু যেকোনো দিন ঢাকার উপকণ্ঠে পৌঁছে যাবে। পুনরায় আপনাকে বলছি, আশু যুদ্ধবিরতি ও রাজনৈতিক সমাধানের কথা বিবেচনা করুন।’ এরপর ১০ ডিসেম্বর গভর্নরের সামরিক উপদেষ্টা মেজর জেনারেল রাও ফরমান আলী ও মুখ্য সচিব পশ্চিম পাকিস্তানি কর্মকর্তা মুজাফফর হোসেন ক্যান্টনমেন্টে জেনারেল নিয়াজির সঙ্গে বিস্তারিত আলোচনা করেন এবং ঢাকায় জাতিসংঘের প্রতিনিধির কাছে ‘আত্মসমর্পণের’ আবেদন হস্তান্তর করেন। এতে অবশ্য কৌশলে আত্মসমর্পণ শব্দটি বাদ দিয়ে অস্ত্রসংবরণ কথাটি ব্যবহার করা হয়। এই আবেদনে আরো লেখা ছিল, \n \n‘যেহেতু সংকটের উদ্ভব হয়েছে রাজনৈতিক কারণে, তাই রাজনৈতিক সমাধান দ্বারা এর নিরসন হতে হবে। আমি তাই পাকিস্তানের রাষ্ট্রপতির দ্বারা অধিকারপ্রাপ্ত হয়ে পূর্ব পাকিস্তানের নির্বাচিত জনপ্রতিনিধিদের ঢাকায় সরকার গঠনের জন্য আহ্বান জানাই। আমি শান্তিপূর্ণভাবে ক্ষমতা হস্তান্তরের ব্যবস্থা নেওয়ার জন্য জাতিসংঘকে আহ্বান জানাই।’\n \nএই আবেদন ঢাকায় জাতিসংঘের প্রতিনিধি পল মার্ক হেনরির হাতে দেওয়া হয়। পাকিস্তানি মহলে বার্তাটি মালিক-ফরমান আলী বার্তা হিসেবে পরিচিতি পায়। পরদিন তা আবার প্রত্যাহার করে নেওয়া হয়। \n \nমুক্তিযোদ্ধা ও ভারতীয় সৈন্যরা ঢাকা ঘেরাও করে পাকিস্তানি সেনাবাহিনীকে আত্মসমর্পণ করার জন্যে আহবান করে। মিত্রবাহিনী কর্তৃক গভর্নর হাউজে (বর্তমান বঙ্গভবন) বোমাবর্ষণের কারণে গভর্নর মালিকের নেতৃত্বাধীন পূর্ব পাকিস্তানের পুতুল সরকারও ইতোমধ্যে পদত্যাগ করে হোটেল ইন্টারকন্টিনেন্টালে (বর্তমান হোটেল শেরাটন) আশ্রয় নেয়। সময় থাকতে শান্তিপূর্ণভাবে আত্মসমর্পণের আহ্বান জানিয়ে আকাশ থেকে অনবরত প্রচারপত্র ফেলা হতে থাকে। \n \nঅবশেষে নিয়াজির অনুরোধে ১৫ ডিসেম্বর বিকেল সাড়ে পাঁচটা থেকে পরদিন সকাল সাড়ে ন-টা পর্যন্ত ভারতীয় বিমান আক্রমণ স্থগিত রাখা হয়। পরদিন সকালে বিমান আক্রমণ বিরতির সময়সীমা শেষ হওয়ার কিছু আগে মেজর জেনারেল রাও ফরমান আলী জাতিসংঘের প্রতিনিধি জন কেলির মাধ্যমে ভারতীয় সামরিক কর্তৃপক্ষকে অস্থায়ী যুদ্ধবিরতির সময়সীমা আরো ছ-ঘণ্টার জন্য বাড়িয়ে দিয়ে ভারতের একজন স্টাফ অফিসার পাঠানোর অনুরোধ জানান যাতে অস্ত্রসমর্পণের ব্যবস্থাদি স্থির করা সম্ভব হয়। এই বার্তা পাঠানোর কিছু আগে অবশ্য ভারতীয় মেজর জেনারেল নাগরার বাহিনী কাদের সিদ্দিকীর মিলিশিয়া বাহিনীকে সঙ্গে করে মিরপুর সেতুতে হাজির হন এবং সেখান থেকে নাগরা নিয়াজিকে আত্মসমর্পণের আহ্বান জানান। নিয়াজির আত্মসমর্পণের ইচ্ছা ব্যক্ত হওয়ার পর সকাল ১০টা ৪০ মিনিটে মুক্তিযোদ্ধাদের সঙ্গে নিয়ে নাগরার বাহিনী ঢাকা শহরে প্রবেশ করে। পাকিস্তানিদের আত্মসমর্পণের দলিল এবং সংশ্লিষ্ট অনুষ্ঠানের ব্যবস্থাদি চূড়ান্ত করার জন্য ভারতীয় ইস্টার্ন কমান্ডের চীফ অব স্টাফ মেজর জেনারেল জ্যাকব মধ্যাহ্নে ঢাকায় এসে পৌঁছান। বিকেল চারটার আগেই বাংলাদেশ নিয়মিত বাহিনীর দুটি ইউনিটসহ মোট চার ব্যাটালিয়ন সৈন্য ঢাকায় প্রবেশ করে। সঙ্গে কয়েক সহস্র মুক্তিযোদ্ধা। ঢাকার জনবিরল পথঘাট ক্রমে জনাকীর্ণ হয়ে উঠতে শুরু করে ‘জয় বাংলা’ উচ্চারণে মুখরিত মানুষের ভিড়ে। বিকেল চারটায় ভারতের ইস্টার্ন কমান্ডের প্রধান ও ভারত-বাংলাদেশ যুগ্ম-কমান্ডের অধিনায়ক লেফটেন্যান্ট জেনারেল জগজিৎ সিং অরোরা, বাংলাদেশের ডেপুটি চীফ অব স্টাফ গ্রুপ ক্যাপ্টেন আবদুল করিম খন্দকার এবং ভারতের অপরাপর সশস্ত্রবাহিনীর প্রতিনিধিগণ ঢাকায় অবতরণ করেন। কিছুক্ষণ পরেই ইন্দিরা গান্ধী পূর্ব ও পশ্চিম উভয় রণাঙ্গনে ভারতের পক্ষ থেকে এককভাবে যুদ্ধবিরতি ঘোষণা করেন।এ ঘটনাকে ইতিবাচক দৃষ্টিকোণ হতে বাংলাদেশের বিজয় ও বাংলাদেশের স্বাধীনতা লাভ ও নেতিবাচক দৃষ্টিকোণ হতে ঢাকার পতন ও পূর্ব পাকিস্তানের বিচ্ছেদ বলে অভিহিত করা হয়।\n \n১৬ ডিসেম্বর বিকেলে রেসকোর্স ময়দানে (বর্তমান সোহরাওয়ার্দী উদ্যান) বাংলাদেশে অবস্থিত পাকিস্তানি সামরিক বাহিনীর অধিনায়ক লেফটেন্যান্ট জেনারেল নিয়াজি হাজার হাজার উৎফুল্ল জনতার সামনে আত্মসমর্পণের দলিলে স্বাক্ষর করেন। প্রায় ৯৩,০০০ পাকিস্তানি সৈন্য আত্মসমর্পণ করে, যা ছিল দ্বিতীয় বিশ্বযুদ্ধের পর সর্ববৃহৎ আত্মসমর্পণ অনুষ্ঠান। বাংলাদেশের মানুষের বহু আকাঙ্ক্ষিত বিজয় ধরা দেয় যুদ্ধ শুরুর নয় মাস পর। ১৬ ডিসেম্বর পাকিস্তান সেনাবাহিনী আত্মসমর্পণ করলেও সারা দেশে সকল পাকিস্তানি সৈন্যকে আত্মসমর্পণ করাতে ২২ ডিসেম্বর পর্যন্ত সময় লেগে যায়। পাকিস্তানি বাহিনীর আত্মসমর্পণের দিনই মার্কিন যুক্তরাষ্ট্রের সপ্তম নৌবহর বঙ্গোপসাগরের দক্ষিণতম প্রান্তে প্রবেশ করে। কিন্তু বাংলাদেশ তখন পাকিস্তানের দখল থেকে সম্পূর্ণভাবে মুক্ত। \n \nদক্ষিণ এশিয়ার রাজনৈতিক প্রেক্ষাপটে ভারত পাকিস্তান সম্পর্কের ক্ষেত্রে বাংলাদেশের স্বাধীনতা যুদ্ধের প্রভাব ছিল সুদুরপ্রসারী, যুদ্ধের অব্যবহিত পরেই ১৯৭২ সালে ভারত ও পাকিস্তানের মাঝে জম্মু ও কাশ্মীর নিয়ে সংঘাতের অবসানকল্পে সিমলা চুক্তি স্বাক্ষরিত হয়। কিন্তু পূর্ব পাকিস্তানের উপর নিয়ন্ত্রণ হারানোর প্রতিক্রিয়া হিসেবে ভারতের বিরুদ্ধে প্রতিশোধস্বরূপ কাশ্মীরকে পূর্ণ আয়ত্বে আনার জন্য পাকিস্তান পূর্বের তুলনায় আরও উদগ্রীব হয়ে ওঠে এবং চু্ক্তি সত্ত্বেও কাশ্মীর বিষয়ক ভারত পাকিস্তান দন্দ্ব পরবর্তীতে পর্যায়ক্রমে আরও তীব্র আকার ধারণ করে। ",
"মুক্তিযুদ্ধ চলাকালীন সময়ে বাংলাদেশে ইতিহাসের নৃশংসতম গণহত্যা চালানো হয়। ২৫ মার্চ মধ্যরাতে পাকিস্তানি সামরিক বাহিনীর শুরু করা অপারেশন সার্চলাইট নামক হত্যাকাণ্ড বাংলাদেশের স্বাধীনতা লাভের পূর্ব পর্যন্ত চলে এবং এই নয় মাসে জামায়াতে ইসলামীর রাজাকার, আলবদর ও আলশামসদের সহায়তায় বিপুল সংখ্যক বাঙালিকে হত্যা করা হয়। যুদ্ধের সময়, পাকিস্তানে একটি ফতোয়া ঘোষণা করা হয় যে, বাঙালি মুক্তিযোদ্ধারা হল হিন্দু এবং তাদের নারীদেরকে যুদ্ধের ”গনিমতের মাল” বা যুদ্ধলব্ধ সম্পদ হিসেবে ব্যবহার করা যাবে।\n \nমুক্তিযুদ্ধ চলাকালীন সময়ে কত মানুষ প্রাণ হারিয়েছে তা নিয়ে গণমাধ্যমে বিভিন্ন রকম পরিসংখ্যান প্রচলিত রয়েছে। বিশ্বব্যাপী বিভিন্ন বিশ্বকোষ ও বইতে এই সংখ্যাটিকে ২,০০,০০০ থেকে শুরু করে ৩০,০০,০০০ পর্যন্ত উল্লেখ করা হয়েছে। বাংলাদেশে সরকার সংখ্যাটিকে ৩০,০০,০০০ হিসেবে অনুমান করে থাকে। বিবিসির বক্তব্যমতে, স্বাধীন গবেষকদের গবেষণা অনুযায়ী সংখ্যাটি ৩ লাখ থেকে ৫ লাখের মধ্যে। পাকিস্তানি পত্রিকা ডনের দাবি মতে, হামিদুর রহমান কমিশনের মতে সংখ্যাটি ২৬০০০, আবার তৎকালীন অনেক বাঙালি, ভারতীয় ও পাকিস্তানি একাডেমিক ব্যক্তিত্বের মতে, সংখ্যাটি তিন লাখ, যা বাংলা থেকে ইংরেজিতে অনুবাদের সময় ভুলবশত তিন মিলিয়ন হিসেবে অনুবাদ করা হয়েছে, যা বাংলায় ত্রিশ লক্ষের সমান। যুদ্ধের সময় প্রায় এক কোটি শরণার্থী ভারতে আশ্রয় গ্রহণ করে, যারা সে সময় দেশত্যাগ না-করলে হয়তো গণহত্যার শিকার হত। স্বাধীনতা লাভের প্রাক্কালে ১৪ ডিসেম্বর রাজাকার, আল-বদর ও আল-শামস বাহিনী পাকিস্তানি সেনাবাহিনীর নির্দেশে বাংলাদেশের প্রায় ৩০০ জন বুদ্ধিজীবীকে ধরে নিয়ে যায় এবং নির্মমভাবে হত্যা করে - যাঁদের মধ্যে ছিলেন শিক্ষক, ডাক্তার, প্রকৌশলী, শিল্পী, কবি, সাহিত্যিক, বিজ্ঞানী। পাকিস্তানপন্থী বাঙালি রাজাকারগণ ডিসেম্বরের শুরুতে যুদ্ধের পরিণতি বুঝতে পেরে স্বাধীনতার ঠিক আগে আগে সুপরিকল্পিতভাবে এ হত্যাকাণ্ড ঘটায়। ধারণা করা হয়, বুদ্ধিজীবীদের হত্যা করে সদ্য স্বাধীন বাংলাদেশের অগ্রগতির পথ বন্ধ করে দেওয়া ছিল তাদের মূল উদ্দেশ্য। ১৪ ডিসেম্বরে নিহত বুদ্ধিজীবীদের লাশ বিভিন্ন গণকবরে ফেলে আসা হয়, যার মধ্যে রায়েরবাজার বধ্যভূমি অন্যতম (বর্তমানে এ বধ্যভূমিতে বুদ্ধিজীবী স্মৃতিসৌধ গড়ে তোলা হয়েছে)। ঢাকা এবং বাংলাদেশের বিভিন্ন জায়গায় পরবর্তী সময়ে বেশ কিছু গণকবর ও বধ্যভূমির সন্ধান পাওয়া গেছে এবং মাঝে মাঝেই এমন নতুন বধ্যভূমি আবিষ্কৃত হচ্ছে (উদাহরণস্বরূপ ঢাকায় অবাঙালি অধ্যুষিত এলাকায় ১৯৯৯ সালের আগস্ট মাসে একটি কূপের ভেতর গণকবরের সন্ধান পাওয়া যায়)। ঢাকায় অবস্থিত আমেরিকান কনসুলেট থেকে মার্কিন যুক্তরাষ্ট্রের স্টেটস ডিপার্টমেন্টে পাঠানো টেলিগ্রামেও যুদ্ধ শুরুর রাতে ঢাকা বিশ্ববিদ্যালয়ের ছাত্র ও সাধারণ জনতার ওপর চালানো নৃশংস হত্যাকাণ্ডের উল্লেখ রয়েছে। সাম্প্রদায়িক সহিংসতা সেসময় বিপুল আকার ধারণ করে, যা শুধুমাত্র পাকিস্তানি সেনাবাহিনী কর্তৃক সঙ্ঘটিত ও উৎসাহিত হয় নি, বরং বাঙালি জাতীয়তাবাদীগণ কর্তৃক অবাঙ্গালি সংখ্যালঘুদের উপরও করা হয়েছিল, বিশেষ করে বিহারিদের উপর। ১৯৭১ খ্রিস্টাব্দের জুন মাসে, বিহারি প্রতিনিধিগণ দাবি করেন যে, ৫,০০,০০০ বিহারি বাঙালিদের হাতে নিহত হয়েছে। আর. জে. রামেলের মতে, আনুমানিক প্রায় ১৫০,০০০ বিহারিকে সেসময় হত্যা করা হয়েছিল। \n \nস্বাধীনতা যুদ্ধকালীন সময়ে বহুসংখ্যক বাঙালি নারী ধর্ষিত হয়; যার সঠিক সংখ্যা জানা যায়নি। বাংলাদেশে ধারণা করা হয় প্রায় ২,০০,০০০ থেকে ৪,০০,০০ নারী মুক্তিযুদ্ধের সময় পরিকল্পিত ধর্ষণ ও হত্যা পরিকল্পনার অধীনে ধর্ষিত হয় এবং তাদের গর্ভে অনেক যুদ্ধশিশু জন্ম নেয়। ঢাকা সেনানিবাসের ভেতরে পাকিস্তানি সৈন্যরা বহুসংখ্যক মেয়েকে ধরে নিয়ে গিয়ে নিজেদের যৌনদাসী হিসেবে ব্যবহার করে, যাদের অধিকাংশই ছিল ঢাকা বিশ্ববিদ্যালয়ের শিক্ষার্থী ও সাধারণ পরিবারের মেয়ে। "
];