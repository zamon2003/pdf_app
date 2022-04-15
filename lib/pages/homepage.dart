import 'package:flutter/material.dart';
import 'package:pdf_project/pages/fiz_Page.dart';
import 'package:pdf_project/pages/math.dart';

class HomePage extends StatefulWidget {
  static const String id = 'homepage';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Colors.cyanAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, MathPage.id);
              },
              child: Text(
                'Matematikadan formulalar',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            RaisedButton(
              color: Colors.cyanAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, FizPage.id);
              },
              child: Text(
                '      Fizikadan formulalar     ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              child: Text("Dastur haqida",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.cyanAccent)),
              onTap: () async {
                const url = 'https://t.me/flutt_uz';
              },
            )
          ],
        ),
      ),
    );
  }
}
