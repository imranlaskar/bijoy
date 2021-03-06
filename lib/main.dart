import 'package:bijoy/provider/bir_uttom_provider.dart';
import 'package:bijoy/provider/quiz_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screen/home_page.dart';
import 'package:provider/provider.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<BirUttomProvider>(create: (_) => BirUttomProvider()),
        ChangeNotifierProvider<QuizProvider>(create: (_) => QuizProvider()),
      ],
      child: const MyApp(),
    ),
     );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
