import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class NextPage extends StatefulWidget {
  final String value;
  final String subjects;

  NextPage({Key key, this.value, this.subjects}) : super(key: key);

  @override
  _NextPageState createState() => new _NextPageState();
}

class _NextPageState extends State<NextPage> {
  String pdfAssets;
  PDFDocument _pdf;
  @override
  void initState() {
    super.initState();
    initpdf();
  }

  initpdf() async {
    pdfAssets = widget.subjects;
    final doc = await PDFDocument.fromAsset(pdfAssets);
    setState(() {
      _pdf = doc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.value),
      ),
      body: _pdf == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(
              document: _pdf,
            ),
    );
  }
}
