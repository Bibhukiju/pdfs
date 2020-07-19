import 'package:flutter/cupertino.dart';

class Pdf {
  String name;
  String image;
  String pdfName;
  Pdf({@required this.image, @required this.name, @required this.pdfName});
}

List<Pdf> pdfs = [
  Pdf(
    image: "ca2.JPG",
    name: "Computer Architecture",
    pdfName: 'ca.pdf',
  ),
  Pdf(image: 'cg.jpg', name: "Computer Arctitecture", pdfName: 'cg.pdf'),
  Pdf(
      image: 'dsa2.jpg',
      name: "Data Structure and algorithm",
      pdfName: 'DSA.pdf'),
  Pdf(image: 'nm.jpeg', name: "Numerical Method", pdfName: 'nm.pdf')
];
