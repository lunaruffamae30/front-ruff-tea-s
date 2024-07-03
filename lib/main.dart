import 'package:flutter/material.dart';
import 'package:sample/Home.dart';
import 'package:sample/pages/Dashboard.dart';
import 'package:sample/pages/menu.dart';
import 'package:sample/pages/Signup.dart';
import 'package:sample/pages/Login.dart';

void main() => runApp(MaterialApp(
  initialRoute:'/menu',
  routes:{
    '/':(context) => Dashboard(),
    '/menu':(context) => Menu(),
    '/profile':(context)=>Home(),
    '/signup':(context)=>Signup(),
    '/login' : (context) =>Login(),

  },
));
