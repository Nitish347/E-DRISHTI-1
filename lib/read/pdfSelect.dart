import 'package:e_drishti/read/pdfView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PdfSelect extends StatefulWidget {
  const PdfSelect({Key? key}) : super(key: key);

  @override
  State<PdfSelect> createState() => _PdfSelectState();
}

class _PdfSelectState extends State<PdfSelect> {
  List<String> chapters = [
    "Chapter 1",
    "Chapter 2",
    "Chapter 3",
    "Chapter 4",
    "Chapter 5",
    "Chapter 6",
  ];
  List<String> chapterName = [
    "Shapes and Space",
    "Numbers One to\nNine",
    "Addition",
    "Subtraction",
    "Numbers Ten to\nTwenty",
    "Time"
  ];
  List<String> pdfList = [
    "assets/pdf/chapter 1.pdf",
    "assets/pdf/chapter 2.pdf",
    "assets/pdf/chapter 3.pdf",
    "assets/pdf/chapter 4.pdf",
    "assets/pdf/chapter 5.pdf",
    "assets/pdf/chapter 6.pdf",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Study Material"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Container(
            child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 40,
                padding: EdgeInsets.all(10.0),
                children: [
                  for (int i = 0; i < chapters.length; i++)
                    Tile(
                      chap: chapters[i],
                      pdfPath: pdfList[i],
                      chapName: chapterName[i],
                    )
                ]),
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  String chap;
  String pdfPath;
  String chapName;
  Tile({required this.chap, required this.pdfPath, required this.chapName});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        // bottom: 2,
        // left: 2,
        // right: 2,
        // top: 2,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
      Positioned(
        bottom: 70,
        left: 5,
        right: 5,
        top: 5,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext) => PdfView(
                      pdfPath: pdfPath,
                      title: chap,
                    )));
          },
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/pdf/book.jpg"),
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
      Positioned(
          bottom: 5,
          left: 25,
          child: Column(
            children: [
              Text(
                chap,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                chapName,
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          )),
      // Positioned(
      //   bottom: 10,
      //   left: 30,
      //   child: Center(
      //     child: Text(
      //       chapName,
      //       style: GoogleFonts.poppins(
      //           fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
      //     ),
      //   ),
      // ),
    ]);
  }
}

void main() {
  runApp(PdfSelect());
}
