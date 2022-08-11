import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import '../constants.dart';
// import '../constants/constants.dart';

class Subject extends StatefulWidget {
  static String id = "branch";
  static String? selectedBranch;

  @override
  State<Subject> createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  int optionSelected = 0;
  String selectedSubject = "";
  void checkOption(int index) {
    setState(() {
      optionSelected = index;
      selectedSubject = Subject[index - 1];
      // StudentInfo.branch = branch[index - 1];
    });
  }

  List<String> Subject = ["Maths", "Science"];

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/maths.png",
      "assets/images/Science.png"
    ];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset("assets/images/subject.png",
                    height: height / 3),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  "Choose your Subject",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: height / 20, fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: height / 100,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  // height: height/1.85,
                  child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 40,
                      mainAxisSpacing: 40,
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(20),

                      scrollDirection: Axis.vertical,
                      physics: ClampingScrollPhysics(),
                      children: [
                        for (int i = 0; i < Subject.length; i++)
                          gridTileBranch(
                            branch: Subject[i],
                            images: images[i],
                            onTap: () => checkOption(i + 1),
                            selected: i + 1 == optionSelected,
                          )
                      ]),
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              Center(
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      boxShadow: Constants.neumorphic1,
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: FloatingActionButton(
                    onPressed: () {
                      print(selectedSubject);
                    },
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height / 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class gridTileBranch extends StatelessWidget {
  gridTileBranch({this.selected, this.onTap, this.branch, this.images});
  final String? branch;
  final String? images;
  final VoidCallback? onTap;
  final bool? selected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              boxShadow: selected ?? false
                  ? Constants.neumorphic2
                  : Constants.neumorphic1,
              borderRadius: BorderRadius.circular(20),
              gradient: Constants.purplegradient1),
          child: Stack(
            children: [
              Center(
                child: Container(
                    height: 110, width: 110, child: Image.asset(images!)),
              ),
              Positioned(
                left: 10,
                top: 5,
                child: Text(
                  branch!,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
