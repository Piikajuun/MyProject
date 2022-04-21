import 'package:flutter/material.dart';
import 'package:proj1/sceen/dataTable.dart';


class StartMemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _toMemo();
  }
}

// ignore: camel_case_types
class _toMemo extends State<StartMemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
           Positioned(
              top: 250,right: 90,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'photos/feather.png',
                  height: 220,
                  width: 200,
                ),
              ),
            ),
            Positioned(
              bottom: 260,right: 135,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              child: Container(
              child: OutlineButton(
                onPressed: () {
                  print('This start');
                  setState(() {});
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TableMemo()));
                },
                textColor: Colors.black87,
                borderSide: BorderSide(
                    color: Colors.black87,
                    width: 1.0,
                    style: BorderStyle.solid),
                child: Text('START'),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
