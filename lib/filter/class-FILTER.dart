// import 'package:e_drishti/filter/subjetc_filter.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Year extends StatefulWidget {
  static String id = " year";

  @override
  State<Year> createState() => _YearState();
}

class _YearState extends State<Year> {
  static String selectedYear = "";
  int optionSelected = 0;
  List<String> year = ["Class 1st", "Class 2nd"];
  void checkOption(int index) {
    setState(() {
      optionSelected = index;
      // print(index);
      selectedYear = year[index - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset("assets/images/class.png", height: height / 3),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Choose your Class",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        // shadows: Constants.neumorphic1,
                        fontSize: height / 20,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            // SizedBox(
            //   height: height / ,
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 50,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    children: [
                      for (int i = 0; i < year.length; i++)
                        Tile(
                          year: year[i],
                          onTap: () => checkOption(i + 1),
                          selected: i + 1 == optionSelected,
                        )
                    ]),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    boxShadow: Constants.neumorphic1,
                    borderRadius: BorderRadius.circular(50),
                    // gradient: Constants.purplegradient
                    color: Colors.white),
                child: FloatingActionButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, Branch.id);
                    print(selectedYear);
                  },
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  Tile({this.selected, this.onTap, this.year});
  final String? year;
  final VoidCallback? onTap;
  final bool? selected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 10,
        width: 5,
        decoration: BoxDecoration(
            boxShadow: Constants.neumorphic1,
            borderRadius: BorderRadius.circular(20),
            color: selected ?? false ? Colors.blue : Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                year!,
                style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: selected ?? false ? Colors.white : Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
