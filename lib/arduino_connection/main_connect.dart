// import 'package:e_drishti/arduino_connection/send_message.dart';
// import 'package:e_drishti/arduino_connection/connection.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
//
//
// class arduinoConnect extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: FlutterBluetoothSerial.instance.requestEnable(),
//         builder: (BuildContext context, future) {
//           if (future.connectionState == ConnectionState.waiting) {
//             return Scaffold(
//               body: Container(
//                 height: double.infinity,
//                 child: Center(
//                   child: Icon(
//                     Icons.bluetooth_disabled,
//                     size: 200,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             );
//           } else {
//             return Home();
//           }
//         },
//     );
//   }
// }
//
// //////////////////////////////////////////////////////////////////////////////////////////
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("Bağlanılabilecek Cihazlar"),
//           ),
//           body: SelectBondedDevicePage(
//             onCahtPage: (device1) {
//               BluetoothDevice device = device1;
//               Navigator.push(context, MaterialPageRoute(builder: (context) {
//                 return ChatPage(
//                   server: device,
//                 );
//               }));
//             },
//           ),
//         ));
//   }
// }