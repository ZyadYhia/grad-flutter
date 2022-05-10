// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:grad/battery.dart';
import 'package:grad/modules/home/homescreen.dart';
import 'package:grad/solarPanels.dart';
import 'package:http/http.dart' as http;



class screenOne extends StatefulWidget {

  @override
  State<screenOne> createState() => _screenOneState();
}

class _screenOneState extends State<screenOne> {
  // void getSolarPanels() async {
  //   var response =
  //   await Dio().get('http://sbcs.epic-techs.com/api/solar-panel');
  //   print(response.data);
  // }

  // Future fetchPanelOData() async{
  //   var url = '2.1.1.2http://sbcs.epic-techs.com/api/solar-panel';
  //  var response = await http.get(url);
  //
  // }


  @override
  Widget build(BuildContext context) {
    var fBatteryLevel = 85;
    var firstPower = 160;
    var secondPower = 110 ;
    var firstTemp = 21;
    var totalP = secondPower + firstPower;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            right: 25.0,
            left: 25.0,
            bottom: 30.0,
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Panel 1',
                  style: TextStyle(
                    color: Color(0xFF4A87E2),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 80.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 78.0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF4A87E2),
                      radius: 74.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 66,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Expanded(
                                child: Icon(
                                  Icons.flash_on_rounded,
                                  color: Colors.yellow,
                                  size: 22.0,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  '${totalP}',
                                  style: TextStyle(
                                    fontSize: 34.0,
                                    color: Color(0xFF4A87E2),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Watt',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xFF4A87E2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  'Total Power',
                  style: TextStyle(
                    color: Color(0xFF4A87E2),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xFF2F3180),
                          Color(0xFF4A87E2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          //column shayl el containers bta3t el P & T
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(10.0,),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Icon(
                                          Icons.flash_on_rounded,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '$firstPower',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 28.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF4A87E2),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(10.0,),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Icon(
                                          Icons.thermostat,
                                          color: Colors.redAccent[200],
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          '$firstTemp',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 28.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF4A87E2),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          //column shayl el battery container
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(10.0,),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('$fBatteryLevel%',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF4A87E2),
                                      ),
                                      ),
                                      SizedBox(width: 15,),
                                      Battery(
                                        value: fBatteryLevel,
                                      size: 150,),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
