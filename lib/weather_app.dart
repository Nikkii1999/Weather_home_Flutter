import 'package:flutter/material.dart';

class WeatherHome extends StatelessWidget {
  _cityDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("New York", style: TextStyle(
          color: Colors.white,
          fontSize: 44.0,
        ),),
        SizedBox(height: 10.0,),
        Text("Today", style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
        ),),
        SizedBox(height: 6.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Noon", style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),),
            Icon(Icons.keyboard_arrow_down,
              color: Colors.white,)
          ],
        ),
      ],
    );
  }
  _tempDetails() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,color: Colors.white,size: 90.0
          ),
          SizedBox(height: 70.0,width: 20.0,),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40.0,),
          Text("32 C", style: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight:FontWeight.w300,
          ),),
          Text("Mostly sunny", style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),),
          SizedBox(height: 70.0,width: 90.0,),
    ],
    ),
    ],
    );
  }

  _getItems(IconData icon, String num, String measure) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.white, size: 28.0,),
        SizedBox(height: 4.0,),
        Text("$num",style: TextStyle(
          fontSize: 20.0, color: Colors.white,),
        ),
        Text("$measure",style: TextStyle(
          fontSize: 20.0, color: Colors.white),
        ),
      ],
    );
  }

  _extraDetails() {
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _getItems(Icons.ac_unit,"5","km/hr"),
          _getItems(Icons.ac_unit,"3","%"),
          _getItems(Icons.ac_unit,"20","%"),
        ]
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
      drawer: Drawer(),
      body: Center(
      child:Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _cityDetails(),
        _tempDetails(),
        _extraDetails(),
        ],
      ),
    ),
    );
  }
}