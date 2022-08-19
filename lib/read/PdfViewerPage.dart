import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:e_drishti/read/ApiServiceProvider.dart';

class PdfViewerPage extends StatefulWidget {
  const PdfViewerPage({Key? key, required this.url}) : super(key: key);

  final String url;

  @override



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: url != null
          ? PDFView(
        filePath: url,
      )
          : Center(child: CircularProgressIndicator()),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
