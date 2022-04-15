import 'package:flutter/material.dart';
import 'package:pdf_project/pages/fiz_Page.dart';
import 'package:pdf_project/pages/homepage.dart';
import 'package:pdf_project/pages/math.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fizika Matematika',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        MathPage.id:(context)=>MathPage(),
        FizPage.id:(context)=>FizPage(),
      },
    );
  }
}
