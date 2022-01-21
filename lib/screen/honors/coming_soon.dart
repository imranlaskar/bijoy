import 'package:flutter/material.dart';
class ComingSoon extends StatefulWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Comming Soon.....",
          style: TextStyle(
            fontSize: 20
          ),),
      ),
    );
  }
}
