import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class solarScreen extends StatefulWidget {
  const solarScreen({Key? key}) : super(key: key);

  @override
  _solarScreenState createState() => _solarScreenState();
}

class _solarScreenState extends State<solarScreen> {

  List<String> labels = ['Panel 1', 'Panel 2'];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ToggleBar(
              //   labels: labels,
              //   textColor: Colors.blueAccent,
              //   selectedTextColor: Colors.white,
              //   backgroundColor: Colors.amberAccent,
              //   selectedTabColor: Colors.black,
              //   labelTextStyle: TextStyle(
              //     fontWeight: FontWeight.bold,
              //   ),
              //   onSelectionUpdated: (index)
              //   {
              //     setState(() {
              //       counter = index;
              //     });
              //   },
              //
              //
              // )
              FlutterToggleTab(
                width: 90,
                borderRadius: 50,
                height: 50,

                  labels: labels,
                  selectedLabelIndex: (index) {
                    setState(() {
                      //el na2l ben screens
                      print("Selected Index $index");
                    });
                  },
                  selectedTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                  unSelectedTextStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  selectedIndex: counter,

              ),

            ],

          ),
        ),
      ),
    );
  }
}












