import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';
class NMOLD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String pdfassets="assets/pdfs/nmold.pdf";
  PDFDocument _pdf;

  @override
  void initState() {
    super.initState();
    initPdf();
  }

  initPdf() async {
    final doc = await PDFDocument.fromAsset(pdfassets);
    setState(() {
      _pdf = doc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Numerical Method"),

      ),
      body: _pdf == null ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _pdf,),

    );
  }
}
