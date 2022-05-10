// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class User extends StatefulWidget {
  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  String userName = 'Amaal Ashraf';
  double percent = 0.5;
  var remaining = 4 ;
  var totalHr = 8;
  var indicator = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F3180),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/pic/top1.png',
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 20.0,
                    top: 30.0,
                    end: 20.0,
                    bottom: 0.0,
                  ),
                  child: Row(
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello,',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '$userName',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ], //children of column
          ),
          SizedBox(
            height: 8.0,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 25.0,
                horizontal: 20.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('Subscription',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2F3180),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  CircularPercentIndicator(
                    animation: true,
                    animationDuration: 1000,
                    radius: 100,
                    lineWidth: 20,
                    percent: percent,
                    progressColor: Color(0xFF2F3180),
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text('$indicator%',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2F3180),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(
                    child: Text('$remaining hrs Remaining of $totalHr hrs / week',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF2F3180),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
