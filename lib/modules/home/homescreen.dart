// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:grad/modules/screenone/screenone.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Future fetchPanelOData() async {
      var urll = Uri.parse('http://192.168.1.11:8000/api/test');
      var response = await http.get(urll);
      print(response);
    }

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
                    start: 35.0,
                    top: 55.0,
                    end: 35.0,
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
                              'EAEAT',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Monitor your charging station!',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage(
                          'assets/pic/logo.png',
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
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/pic/station.png',
                      scale: 2,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print('Notification button clicked');
                      fetchPanelOData();
                    },
                    icon: Icon(
                      Icons.notifications_active,
                      color: Colors.amberAccent,
                      size: 35.0,
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
