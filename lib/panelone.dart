// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad/modules/home/homescreen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:grad/solarPanels.dart';

class screenOne extends StatelessWidget {
  var totalP = 300;
  var firstPower = 160;
  var firstTemp = 21;
  var fBatteryLevel = 100;
  final screens = [
    screenOne(),
    HomePage(),
    screenOne()
  ];
  final items = [
    Image.asset('assets/pic/panel.png', height: 30,width: 30,),
    //Icon(Icons.table_chart_outlined, size: 30,),
    Icon(Icons.home, size: 30,),
    //Icon(Icons.notifications_active, size: 30,),
    Image.asset('assets/pic/panel.png', height: 30,width: 30,),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: PreferredSize(
        //     preferredSize: Size.fromHeight(60.0), // here the desired height
        //     child: AppBar(
        //       leading: IconButton(onPressed: ()
        //       {
        //         print('back arrow button');
        //         Navigator.pop(context);
        //       }, icon: Icon(
        //         Icons.arrow_back,
        //         color: Colors.white,
        //       ),
        //       ),
        //       centerTitle: true,
        //       title: Text('Solar Panels',
        //         style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontSize: 25.0,
        //         ),
        //       ),
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.vertical(
        //           bottom: Radius.circular(45),
        //         ),
        //       ),
        //       actions: [
        //         IconButton(onPressed: ()
        //         {
        //           print('sp-screen notification');
        //         },
        //             icon: Icon(Icons.notifications_active,)
        //         ),
        //         SizedBox(
        //           width: 10.0,
        //         ),
        //       ],
        //     )
        // ),
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              right: 15.0,
              left: 15.0,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 80.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 78.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 74.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          radius: 66,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Icon(
                                    Icons.flash_on_rounded,
                                    color: Colors.blueAccent,
                                    size: 22.0,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '${totalP}',
                                    style: TextStyle(
                                      fontSize: 34.0,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Watt',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.blueAccent,
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
                    height: 14.0,
                  ),
                  Text(
                    'Total Power',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),

                  //container elly shayl el design el 2dem
                  // Expanded(
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               padding: EdgeInsets.symmetric(
                  //                 horizontal: 25.0,
                  //                 vertical: 10.0,
                  //               ),
                  //               decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(5.0),
                  //                 boxShadow: [ BoxShadow(
                  //                   color: Colors.grey.withOpacity(0.5),
                  //                   spreadRadius: 3,
                  //                   blurRadius: 5,
                  //                   offset: Offset(0, 2),
                  //                 ),
                  //                 ],
                  //               ),
                  //               child: Column(
                  //                 children: [
                  //                   Text(
                  //                       'Battery',
                  //                     style: TextStyle(
                  //                       fontSize: 18.0,
                  //                       fontWeight: FontWeight.bold,
                  //                       color: Colors.blueAccent,
                  //                     ),
                  //                   ),
                  //                   SizedBox(height: 10.0,),
                  //                   Container(
                  //                     padding: EdgeInsets.symmetric(
                  //                       vertical: 40,
                  //                       horizontal: 25.0,
                  //                     ),
                  //                     decoration: BoxDecoration(
                  //                       color: Colors.blueAccent,
                  //                       borderRadius: BorderRadius.circular(20.0),
                  //                     ),
                  //                     child: Column(
                  //                       children: [
                  //                         Text(
                  //                           '100',
                  //                           style: TextStyle(
                  //                             fontSize: 40.0,
                  //                             fontWeight: FontWeight.bold,
                  //                             color: Colors.white,
                  //                           ),
                  //                         ),
                  //                         Icon(
                  //                             Icons.percent_outlined,
                  //                           color: Colors.white,
                  //
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                   SizedBox(height: 10.0,),
                  //                 ],
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 28.0,
                  //       ),
                  //       Expanded(
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               padding: EdgeInsets.all(10.0,),
                  //               decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(5.0),
                  //                 boxShadow: [ BoxShadow(
                  //                   color: Colors.grey.withOpacity(0.5),
                  //                   spreadRadius: 3,
                  //                   blurRadius: 5,
                  //                   offset: Offset(0, 2),
                  //                 ),
                  //                 ],
                  //               ),
                  //               child: Column(
                  //                 children: [
                  //                   Row(
                  //                     mainAxisSize: MainAxisSize.max,
                  //                     //mainAxisAlignment: MainAxisAlignment.end,
                  //                     children: [
                  //                       Icon(
                  //                         Icons.flash_on_rounded,
                  //                         color: Colors.blueAccent,
                  //                       ),
                  //                       // Text(
                  //                       //   'Watt',
                  //                       //   style: TextStyle(
                  //                       //     fontSize: 15.0,
                  //                       //     fontStyle: FontStyle.italic,
                  //                       //     color: Colors.grey[500],
                  //                       //
                  //                       //   ),
                  //                       //   textAlign: TextAlign.right,
                  //                       // ),
                  //                     ],
                  //                   ),
                  //                   Text(
                  //                     '160',
                  //                     textAlign: TextAlign.center,
                  //                     style: TextStyle(
                  //                       fontSize: 30.0,
                  //                       fontWeight: FontWeight.bold,
                  //                       color: Colors.blueAccent,
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     height: 15.0,
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               height: 15.0,
                  //             ),
                  //             Container(
                  //               padding: EdgeInsets.all(10.0,),
                  //               decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(5.0),
                  //                 boxShadow: [ BoxShadow(
                  //                   color: Colors.grey.withOpacity(0.5),
                  //                   spreadRadius: 3,
                  //                   blurRadius: 5,
                  //                   offset: Offset(0, 2),
                  //                 ),
                  //                 ],
                  //               ),
                  //               child: Column(
                  //                 children: [
                  //                   Row(
                  //                     mainAxisSize: MainAxisSize.max,
                  //                     //mainAxisAlignment: MainAxisAlignment.end,
                  //                     children: [
                  //                       Icon(
                  //                         Icons.thermostat_outlined,
                  //                         color: Colors.blueAccent,
                  //                       ),
                  //                       // Text(
                  //                       //   'Celsius',
                  //                       //   style: TextStyle(
                  //                       //     fontSize: 15.0,
                  //                       //     fontStyle: FontStyle.italic,
                  //                       //     color: Colors.grey[500],
                  //                       //
                  //                       //   ),
                  //                       //   textAlign: TextAlign.right,
                  //                       // ),
                  //                     ],
                  //                   ),
                  //                   Text(
                  //                     '21',
                  //                     textAlign: TextAlign.center,
                  //                     style: TextStyle(
                  //                       fontSize: 30.0,
                  //                       fontWeight: FontWeight.bold,
                  //                       color: Colors.blueAccent,
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     height: 15.0,
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //
                  //
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(color: Colors.amberAccent)
          ),

          child: CurvedNavigationBar(
            color: Colors.white,
            buttonBackgroundColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 300),
            height: 50,
            items: items,
          ),
        ),
      ),
    );
  }
}
