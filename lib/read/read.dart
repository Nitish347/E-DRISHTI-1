
import 'dart:io';

import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:e_drishti/dashboard.dart';
import 'package:e_drishti/read/PdfViewerPage.dart';
import 'package:flutter/material.dart';
import 'package:e_drishti/Widget.dart';




class read_page extends StatefulWidget {
  const read_page({Key? key}) : super(key: key);
  @override
  State<read_page> createState() => read_page_State();
}

class read_page_State extends State<read_page> {
  bool _isLoading = true;
  late PDFDocument document;
  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromAsset('assets/sample.pdf');

    setState(() => _isLoading = false);
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;

    changePDF(index) async {
      setState(() => _isLoading = true);
      if(index==1){
        document = await PDFDocument.fromURL("https://drive.google.com/file/d/1YR_ijCp0qINXGOAPSCcGLS8e08Q0aXj2/view?usp=sharing");
      }
      else if(index==2){
        document = await PDFDocument.fromURL("https://drive.google.com/file/d/1ExBamURLdGlIMmVdEVWwZWK7IoxLH0A8/view?usp=sharing");
      }
      else if(index==6){
        document = await PDFDocument.fromURL("https://drive.google.com/file/d/1W4PrWyH_IrWjccI8zz934nQniZLmn-zH/view?usp=sharing");
      }
      else if(index==3){
        document = await PDFDocument.fromURL("https://drive.google.com/file/d/1Jf4LkDMh4Gh7uiBzB3mmte2vmbueq6OF/view?usp=sharing");
      }
      else if(index==4){
        document = await PDFDocument.fromURL("https://drive.google.com/file/d/1QlKCsYKKYely7DRqUQvs1v3U8CjJw5Ud/view?usp=sharing");
      }
      else if(index==5){
        document = await PDFDocument.fromURL("https://drive.google.com/file/d/11YHGeySNQ0WYiM8Jf2N-U9sidt88AiBe/view?usp=sharing");
      }

    }

    return Scaffold(drawer: Drawer(child:
      GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedBackgroundColor: Colors.blueAccent,

                title: Text('Chapter 1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {changePDF(1);},
                      child: const Text('Summary'),),
                  ),
                ],
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedBackgroundColor: Colors.white70,

                title: Text('Chapter 2', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {changePDF(2);},
                      child: const Text('Summary'),),
                  ),
                ],
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedBackgroundColor: Colors.white70,

                title: Text('Chapter 3', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {changePDF(3);},
                      child: const Text('Summary'),),
                  ),
                ],
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedBackgroundColor: Colors.blueAccent,

                title: Text('Chapter 4', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {changePDF(4);},
                      child: const Text('Summary'),),
                  ),
                ],
              ),
              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedBackgroundColor: Colors.blueAccent,

                title: Text('Chapter 5', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {changePDF(5);},
                      child: const Text('Summary'),),
                  ),
                ],
              ),

              ExpansionTile(
                childrenPadding: EdgeInsets.only(left: 20),
                collapsedBackgroundColor: Colors.white70,

                title: Text('Chapter 6', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                      onPressed: () {changePDF(6);},
                      child: const Text('Summary'),),
                  ),
                ],
              ),
              // navBar(),
            ],
          ),),
        // appbar(title: "Read Out"),
        body: Center(
        child: _isLoading
        ? Center(child: CircularProgressIndicator())
        : PDFViewer(
    document: document,
    zoomSteps: 1,
    ),),);
  }
}

