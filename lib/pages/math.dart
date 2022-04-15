import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:pdf_project/pages/homepage.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MathPage extends StatefulWidget {
  static const String id = 'MathPage';

  const MathPage({Key? key}) : super(key: key);

  @override
  State<MathPage> createState() => _MathPageState();
}

class _MathPageState extends State<MathPage> {
  PdfViewerController _pdfViewerController = PdfViewerController();
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();

  @override
  void inistState() {
    _pdfViewerController = PdfViewerController();

    super.initState();
  }

  double forZoom = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SfPdfViewer.asset(
          'assets/pdf/matematika.pdf',
          controller: _pdfViewerController,
          key: _pdfViewerStateKey,
        ),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: Icon(Icons.home),
          ),
          title: Text('Matematika'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  _pdfViewerController.zoomLevel = 1.125 * forZoom;
                });
              },
              icon: Icon(Icons.zoom_in),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _pdfViewerController.zoomLevel = forZoom / (1.25);
                });
              },
              icon: Icon(Icons.zoom_out),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget _fizka() {
    return SafeArea(
        child: Scaffold(
      body: SfPdfViewer.asset('assets/pdf/fizika.pdf'),
    ));
  }

  Widget _matematika() {
    return SafeArea(
        child: Scaffold(
      body: SfPdfViewer.asset('assets/pdf/matematika.pdf'),
    ));
  }
}
