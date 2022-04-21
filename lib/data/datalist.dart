// import 'package:flutter/material.dart';
// import 'package:flutter_blue/flutter_blue.dart';
// import 'package:proj1/connect/devices.dart';
// import 'package:proj1/myservice.dart';
//
// class Datalist extends StatefulWidget{
//   Datalist({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _Datalist createState() => _Datalist(() { });
// }
//
// class _Datalist extends State<Datalist> {
//   final VoidCallback onNotification;
//   String text;
// value1 _myValue = value1();
//
//   _Datalist(this.onNotification);
// void _increment(){
//   setState((){
//     _myValue.incrementMyVariable();
//   });
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('44'),
//       ),
//       body: Center(
//         child: StreamBuilder<List<int>>(builder: (c, snapshot) {
//           return Scaffold(
//             body: Column(
//               children: [
//                 TextButton(
//                   child: Text('Characteristic'),
//                   onPressed: () => onNotification(),
//                 ),
//                 Text('${_myValue.myVariable}'),
//               ],
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }