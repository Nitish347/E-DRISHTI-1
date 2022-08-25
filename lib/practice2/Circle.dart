// import 'package:flutter/material.dart';
// import 'package:sih2022/Practice/SquareLevel1.dart';
//
// class Circle1 extends StatefulWidget {
//   const Circle1({Key? key}) : super(key: key);
//
//   @override
//   State<Circle1> createState() => _Circle1State();
// }
//
// class _Circle1State extends State<Circle1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Practice Circle"),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 40.0),
//           child: Column(
//             children: [
//               Stack(
//                 children: [
//                   Center(
//                     child: Container(
//                       height: 350,
//                       width: 350,
//                       decoration: BoxDecoration(
//                           color: Colors.blue.withOpacity(0.5),
//                           borderRadius: BorderRadius.circular(180)),
//                       child: Column(
//                         children: List.generate(5, (index) {
//                           return Row(
//                             children: List.generate(5, (index) {
//                               return Box();
//                             }),
//                           );
//                         }),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 70),
//                     child: Center(
//                       child: Container(
//                         height: 210,
//                         width: 210,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(180)),
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
