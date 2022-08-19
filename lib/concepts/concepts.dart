import 'package:e_drishti/Widget.dart';
import 'package:e_drishti/concepts/concepts_widget.dart';
import 'package:e_drishti/dashboard.dart';
import 'package:e_drishti/practice/shapes/square.dart';
import 'package:e_drishti/read/read.dart';
import 'package:flutter/material.dart';

class Concepts extends StatefulWidget {
  const Concepts({Key? key}) : super(key: key);

  @override
  State<Concepts> createState() => _ConceptsState();
}

class _ConceptsState extends State<Concepts> {

  @override
  Widget build(BuildContext context) {

    void onTap(int index){
      if(index==0){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Concept_Widget(title: 'What is a Square?', content: 'A flat geometric figure that has four equal sides and four right angles.\n\nRelate it to something formed with four equal or roughly equal sides and four right angles the squares of a checkerboard.', image: 'https://www.creatopy.com/blog/wp-content/uploads/2020/07/Geometric-shapes-in-design-1024x525.png')));
      }
      else if(index==1){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Concept_Widget(title: 'What is a Sine Graph?', content: 'The sin graph is a visual representation of the sine function for a given range of angles.\nThe horizontal axis of a trigonometric graph represents the angle, usually written as θ, and the y-axis is the sine function of that angle.\nThe graph does not start at the origin but it does pass through it.', image: 'https://www.varsitytutors.com/assets/vt-hotmath-legacy/hotmath_help/topics/graphing-sine-function/sine-graph.gif')));
      }
      else if(index==2){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Concept_Widget(title: 'What is a Parabola?', content: 'A parabola is a U-shaped plane curve where any point is at an equal distance from a fixed point (known as the focus) and from a fixed straight line which is known as the directrix.', image: 'https://studiousguy.com/wp-content/uploads/2021/06/Parabola.jpeg')));
      }
      else if(index==3){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Concept_Widget(title: 'Understanding Area?', content: 'The area is the region bounded by the shape of an object.\nThe space covered by the figure or any two-dimensional geometric shape, in a plane, is the area of the shape.', image: 'https://i.pinimg.com/736x/d4/48/0a/d4480a5d14f48f3fd65775a0f3c3cb39.jpg')));
      }
      else if(index==4){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Concept_Widget(title: 'Understanding Perimeter', content: 'Perimeter is the distance around the outside of a shape.', image: 'https://i.pinimg.com/736x/d4/48/0a/d4480a5d14f48f3fd65775a0f3c3cb39.jpg')));
      }

    }

    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: new AppBar(
        title: Text('Concepts & Explanation'),
        leading: new IconButton(
        icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Dashboard()));
        },
        ),
        centerTitle: true,
        ),
      // bottomNavigationBar: navBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: GestureDetector(
                    child: Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height/3,
                        width: MediaQuery.of(context).size.width/2.5,

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                             Image.network('https://cdni.iconscout.com/illustration/premium/thumb/man-learning-to-assemble-shapes-5796177-4841272.png'),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Text('Shapes: Understanding Square',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: ()=>{
                      onTap(0),
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0,),
                  child: GestureDetector(
                    child: Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width/2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.network(
                                  'https://cdn5.vectorstock.com/i/thumb-large/18/84/rising-graph-report-people-educating-vector-32811884.jpg',
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text('Graphs: Understanding Sine Graph',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: ()=>{
                      onTap(1),
                    },
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Card(
                  elevation: 5.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height/4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Conic_Sections.svg/220px-Conic_Sections.svg.png',
                          height: MediaQuery.of(context).size.height/5,
                          width: MediaQuery.of(context).size.width/2,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only( right: 8.0),
                          child: Text('Shapes:\nUnderstanding\nParabola',
                            maxLines: 3,
                            style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: ()=>{
                  onTap(2),
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: GestureDetector(
                    child: Card(
                      elevation: 6.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width/2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.network('https://as2.ftcdn.net/v2/jpg/01/34/83/57/1000_F_134835758_qsWTGB0G0z3gTYVNtnUvpFH8Wkg3kUhR.jpg'),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text('Mensuration: Understanding Area',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: ()=>{
                      onTap(3),
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0,),
                  child: GestureDetector(
                    child: Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height/3,
                          width: MediaQuery.of(context).size.width/2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.network('https://images.twinkl.co.uk/tr/raw/upload/u/ux/the-difference-between-area-and-perimeter_ver_1.png',
                              height: MediaQuery.of(context).size.height/5,),
                              Padding(
                                padding: const EdgeInsets.only(top: 12.0),
                                child: Text('Mensuration: Understanding Perimeter',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: ()=>{
                      onTap(4),
                    },
                  ),
                ),

              ],
            ),
          ],
        ),
      ),

    );
  }
}
