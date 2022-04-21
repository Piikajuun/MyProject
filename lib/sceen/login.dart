import 'package:flutter/material.dart';
import 'package:proj1/homepage.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _loginState();
  }
}

// ignore: camel_case_types
class _loginState extends State<login> {
  //HomePage({key key, this.title}) : super(key:key);

  String valueChoose;
  List listItem = ["Year 1", "Year 2", "Year 3", "Year 4"];
  List listfactory = ['PHY', 'CHEM', 'BIO'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          shrinkWrap: true,
          children: <Widget>[
            Image.asset(
              'photos/Sci_Logo.png',
              height: 200,
              width: 200,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
              child: TextField(
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
                decoration: InputDecoration(labelText: 'ID Number'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
              child: TextField(
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     // RaisedButton(
            //     //   // child: Text('Login'),
            //     //   // onPressed: () {
            //     //   //   print('This login');
            //     //   // },
            //     //
            //     //   child: DropdownButton(
            //     //     hint: Text('Year:'),
            //     //     dropdownColor: Colors.white,
            //     //     icon: Icon(Icons.arrow_drop_down),
            //     //     iconSize: 36,
            //     //     // isExpanded: true,
            //     //     underline: SizedBox(),
            //     //     style: TextStyle(color: Colors.black, fontSize: 22),
            //     //     value: valueChoose,
            //     //     onChanged: (newValue) {
            //     //       setState(() {
            //     //         valueChoose = newValue;
            //     //       });
            //     //     },
            //     //     items: listItem.map((valueItem) {
            //     //       return DropdownMenuItem(
            //     //         value: valueItem,
            //     //         child: Text(valueItem),
            //     //       );
            //     //     }).toList(),
            //     //   ),
            //     // ),
            //     RaisedButton(
            //       child: DropdownButton(
            //         hint: Text('Program:'),
            //         dropdownColor: Colors.white,
            //         icon: Icon(Icons.arrow_drop_down),
            //         iconSize: 36,
            //         // isExpanded: true,
            //         underline: SizedBox(),
            //         style: TextStyle(color: Colors.black, fontSize: 22),
            //         value: valueChoose,
            //         onChanged: (newValue) {
            //           setState(() {
            //             valueChoose = newValue;
            //           });
            //         },
            //         items: listfactory.map((valueItem) {
            //           return DropdownMenuItem(
            //             value: valueItem,
            //             child: Text(valueItem),
            //           );
            //         }).toList(),
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                ElevatedButton(
                  child: Text('Login'), onPressed: () {print('This login');

                    setState(() {});
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                ),
              ],
            ),
            Center(
              child: Text('2021 \u00a9 Chutikan'),
            )
          ],
        ),
      ),
    );
  }
}
