import 'package:flutter/material.dart';

class LedShow extends StatefulWidget {
  const LedShow({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LedShow> {
  //String _input = "...";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text(
          'Turn Light',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(
        //       Icons.search,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {
        //       scaffoldKey.currentState!.hideCurrentSnackBar();
        //       scaffoldKey.currentState!.showSnackBar(
        //         const SnackBar(content: Text('Pressed search')),
        //       );
        //     },
        //   )
        // ],
        backgroundColor: Colors.pinkAccent.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child:
                  const Text('Button ONE', style: TextStyle(fontSize: 15)),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color.fromRGBO(61, 130, 208, 0.6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        // side: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.5))
                      )),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child:
                  const Text('Button TWO', style: TextStyle(fontSize: 15)),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color.fromRGBO(238, 134, 168, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        // side: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.5))
                      )),
                ),
              ),
            ),
            // Container(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Column(
            //       children: <Widget>[
            //         TextFormField(
            //           maxLines: 1,
            //           controller: textController,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.all(10),
            //   height: 50.0,
            //   child: Padding(
            //     padding: const EdgeInsets.all(5.0),
            //     child: ElevatedButton(
            //       onPressed: () {
            //         setState(() {
            //           _input = textController.text;
            //         });
            //       },
            //       child: Text("Update", style: TextStyle(fontSize: 15)),
            //       // style: TextButton.styleFrom(
            //       //     primary: Colors.black,
            //       //     backgroundColor: Color.fromRGBO(247, 247, 247, 1),
            //       //     shape: RoundedRectangleBorder(
            //       //       borderRadius: BorderRadius.circular(18.0),
            //       //       // side: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.5))
            //       //     )),
            //     ),
            //   ),
            // ),
            // Text('$_input') ,
          ],
        ),
      ),
    );
  }
}
