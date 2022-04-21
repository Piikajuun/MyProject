import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:proj1/homepage.dart';
import 'package:proj1/sceen/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      color: Colors.amberAccent,
      home: StreamBuilder<BluetoothState>(
          stream: FlutterBlue.instance.state,
          initialData: BluetoothState.unknown,
          builder: (BuildContext c, AsyncSnapshot<BluetoothState> snapshot) {
            final BluetoothState state = snapshot.data;
            if (state == BluetoothState.on) {
              return MyHomePage();
            }
            return BluetoothOffScreen(state: state);
          }),
    );
  }
}
