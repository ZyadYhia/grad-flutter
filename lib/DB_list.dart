import 'package:flutter/material.dart';
class powerModel
{
  final String power;

  powerModel({
    required this.power,
});
}

class dbList extends StatelessWidget
{
  List<powerModel> powers = [
    powerModel(power: '150'),
    powerModel(power: '120'),
    powerModel(power: '160'),
    powerModel(power: '130'),
    powerModel(power: '90'),
  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('modeling list from DB'),
      ),
      body:ListView.separated(
          itemBuilder: (context, index) => BuildPowerItem(powers[index]),
          separatorBuilder: (context, index) => Padding(
            padding: EdgeInsetsDirectional.only(
              start: 15.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
                color: Colors.grey[300],
            ),
          ),
          itemCount: powers.length,
      )
    );

  }
Widget BuildPowerItem(powerModel powerOP) => Padding(
  padding: EdgeInsets.all(15.0),
  child: Row(
    children: [
      Expanded(
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8.0, ),
          ),
          child: Padding(
              padding: EdgeInsets.all(15.0,),
              child: Row(
                children: [
                  Text('${powerOP.power}'),
                  Text('Watt'),
                ],
              )),
        ),
      ),
      SizedBox(width: 40.0,),
      Expanded(
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8.0, ),
          ),
          child: Padding(
              padding: EdgeInsets.all(15.0,),
              child: Row(
                children: [
                  Text('${powerOP.power}'),
                  Text('Watt'),
                ],
              )),
        ),
      ),
      SizedBox(height: 10.0,),


    ],
  ),
);
}