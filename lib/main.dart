import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.black,
    appBar:AppBar(
      title:Text('User Profile'),
      backgroundColor: Colors.grey,
      centerTitle: true,
    ),
    body:Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NAME',
            style: TextStyle(
              fontSize: 16.0,
              color:Colors.white,
              letterSpacing:2.0
            ),
          ),
          Text(
            'RUFFA MAE V. LUNA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:Colors.white,
              fontSize: 25.0
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'YEAR',
            style: TextStyle(
                fontSize: 16.0,
                color:Colors.white,
                letterSpacing:2.0
            ),
          ),
          Text(
            'THIRD YEAR',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.white,
                fontSize: 25.0
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'EMAIL',
            style: TextStyle(
                fontSize: 16.0,
                color:Colors.white,
                letterSpacing:2.0
            ),
          ),
          Text(
            'ruffamaeluna323@gmail.com',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.white,
                fontSize: 25.0
            ),
          )
        ],
      ),
    ),
  ),
));