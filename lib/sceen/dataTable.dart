//import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class TableMemo extends StatefulWidget {
  const TableMemo({Key key}) : super(key: key);

  @override
  _TableMemoState createState() => _TableMemoState();
}

class _TableMemoState extends State<TableMemo> {
  int dataToChange = 0;

  void changedata() {
    setState(() {
      timer;
    });
  }

  List<int> timer = [1, 2, 5, 7, 3];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table'),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SingleChildScrollView(
            child: DataTable(
              sortColumnIndex: 1,
              sortAscending: true,
              columnSpacing: 20,
              horizontalMargin: 40,
              //minWidth: 100,
              columns: <DataColumn>[
                DataColumn(
                  label: Text('No.',
                      style: TextStyle(
                          fontSize: 15.0, fontStyle: FontStyle.italic)),
                  numeric: false,
                ),
                DataColumn(
                  label: Text('Place',
                      style: TextStyle(
                          fontSize: 15.0, fontStyle: FontStyle.italic)),
                  numeric: false,
                ),
                DataColumn(
                  label: Text('Time',
                      style: TextStyle(
                          fontSize: 15.0, fontStyle: FontStyle.italic)),
                  numeric: false,
                ),
              ],
              rows: <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(Text('1.')),
                  DataCell(
                      TextField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(hintText: 'Fill')),
                      showEditIcon: true,
                      placeholder: true),
                  DataCell(Text('')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('2.')),
                  DataCell(
                      TextField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(hintText: 'Fill')),
                      showEditIcon: true,
                      placeholder: true),
                  DataCell(
                    Text(''),
                  ),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('3.')),
                  DataCell(
                      TextField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(hintText: 'Fill')),
                      showEditIcon: true,
                      placeholder: true),
                  DataCell(Text('')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('4.')),
                  DataCell(
                      TextField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(hintText: 'Fill')),
                      showEditIcon: true,
                      placeholder: true),
                  DataCell(Text('')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('5.')),
                  DataCell(
                      TextField(
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(hintText: 'Fill')),
                      showEditIcon: true,
                      placeholder: true),
                  DataCell(Text('')),
                ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: changedata,
                  icon: Icon(
                    Icons.send_and_archive,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Average',
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text("$dataToChange"),
            ],
          )
        ],
      ),
    );
  }

// @override
// void debugFillProperties(DiagnosticPropertiesBuilder properties) {
//   super.debugFillProperties(properties);
//   properties.add(StringProperty('timer', timer));
//   properties.add(StringProperty('timer', timer));
// }
}
