// ignore_for_file: prefer_const_constructors
//import 'package:device_preview/device_preview.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad/DB_list.dart';
import 'package:grad/modules/home/homescreen.dart';
import 'package:grad/modules/login/login_screen.dart';
import 'package:grad/network/remote/dio_helper.dart';
import 'package:grad/portState.dart';
import 'package:grad/ports.dart';
import 'package:grad/modules/register/register.dart';
import 'package:grad/modules/screenone/screenone.dart';
import 'package:grad/modules/screentwo/screentwo.dart';
import 'package:grad/shared/components/components.dart';
import 'package:grad/solarPanels.dart';
import 'package:grad/solarScreen.dart';
import 'package:grad/testBattery.dart';
import 'package:grad/user.dart';
import 'package:grad/welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

// void main() {
//   runApp(DevicePreview(
//     enabled: true,
//     builder: (context) => MyApp(), ));
// }

void main() {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //home: register(),
      //home: LoginScreen(),
      //home: HomePage(),
      // home: screenOne(),
      //home: solarScreen(),
      //home: Ports(),
      //home: User(),
      //home: PortState(),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final screens = [HomePage(), screenOne(), screenTwo(), PortState()];
  int index = 0;
  final items = [
    Icon(
      Icons.home,
      size: 30,
    ),
    Image.asset(
      'assets/pic/panel.png',
      height: 30,
      width: 30,
    ),
    Image.asset(
      'assets/pic/panel.png',
      height: 30,
      width: 30,
    ),
    Icon(
      Icons.table_chart,
      size: 30,
    ),
    //Icon(Icons.table_chart_outlined, size: 30,),

    //Icon(Icons.notifications_active, size: 30,),
  ];
  Database? database;

  @override
  void initState() {
    super.initState();
    createDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.amberAccent)),
        child: CurvedNavigationBar(
          color: Color(0xFF2F3180),
          buttonBackgroundColor: Colors.transparent,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          height: 50,
          items: items,
          index: index,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }

  void createDB() async
  {
    //var database hwa da el variable elly hnt3aml m3ah fl CRUD f hntl3o bara 3shan now hwa local
    database= await openDatabase(
      'solaPanelDB.db',
      version: 1,
      //oncreate method called one time only
      onCreate: (database, version)
      {
        print('database created');

        //tables only to be created one time so we create them here
        //elly gwa el excute('sql statement') by2raha w ynfzha
        //grenON esm el table
        database.execute('CREATE TABLE SPdata (id INTEGER PRIMARY KEY, powerOne TEXT,powerTwo TEXT, tempOne TEXT,tempTwo TEXT, batteryOne TEXT, batteryTwo TEXT)').then((value) {
          print('tables created');
        }).catchError((error){
          print('Error when tables is created ${error.toString()}');
        });

      },
      onOpen: (database)
      {
        getDataFromDB(database);
        print('database opened');
      },
    );
  }

  Future insertToDB() async
  {
    return await database?.transaction((txn) async {
      txn.rawInsert('INSERT INTO grenON(powerOne ,powerTwo , tempOne ,tempTwo , batteryOne , batteryTwo ) VALUES("160", "110","21","19", "85", "20")').then((value) {
        print('$value inserted done');
      }).catchError((error){
        print('Error when new record is created ${error.toString()}');
      });
    });

  }


  void getDataFromDB(database) async
  {
    List<Map> spData = await database.rawQuery('SELECT * FROM SPdata');
    print(spData);
  }

}

//darkBlue 0xFF2F3180
//lightBlue 0xFF4A87E2
//lighterBlue 0xFF7EE6DE
//darkYellow 0xFFFCCF14
//yellow 0xFFFFE169
