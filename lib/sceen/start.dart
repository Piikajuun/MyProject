import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothOffScreen extends StatelessWidget {
  const BluetoothOffScreen({Key key, this.state}) : super(key: key);
  final BluetoothState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(Icons.bluetooth_disabled,
                size: 200.0, color: Colors.black38),
            Text(
                'BLE is ${state != null
                    ? state.toString().substring(15)
                    : 'not connect'}.'),
          ],
        ),
      ),
    );
  }
}
// class FindDevicesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Find Devices'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             StreamBuilder<List<ScanResult>>(
//               stream: FlutterBlue.instance.scanResults,
//               initialData: [],
//               builder:
//                   (BuildContext c, AsyncSnapshot<List<ScanResult>> snapshot) =>
//                   Column(
//                     children: snapshot.data
//                         .map((ScanResult result) => ListTile(
//                       title: Text(result.device.name == ''
//                           ? 'Unknown'
//                           : result.device.name),
//                       subtitle: Text(result.device.id.toString()),
//                       onTap: () => Navigator.of(context).push(
//                           MaterialPageRoute(
//                               builder: (BuildContext context) {
//                                 result.device.connect();
//                                 return DeviceScreen(device: result.device);
//                               })),
//                     ))
//                         .toList(),
//                   ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: StreamBuilder<bool>(
//         stream: FlutterBlue.instance.isScanning,
//         initialData: false,
//         builder: (BuildContext c, AsyncSnapshot<bool> snapshot) {
//           if (snapshot.data) {
//             return FloatingActionButton(
//               child: const Icon(Icons.stop),
//               onPressed: () => FlutterBlue.instance.stopScan(),
//               backgroundColor: Colors.red,
//             );
//           } else {
//             return FloatingActionButton(
//                 child: const Icon(Icons.search),
//                 onPressed: () => FlutterBlue.instance
//                     .startScan(timeout: const Duration(seconds: 5)));
//           }
//         },
//       ),
//     );
//   }
// }
