import 'package:flutter/material.dart';

AppBar appbar_home({String title = ''}) { 
  
  return AppBar(   
    backgroundColor: Color.fromARGB(255, 45, 43, 43),
    title: Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        Image.asset(
          'assets/car.png',
          fit: BoxFit.contain, 
          height: 50, 
          color: Colors.yellow
        ),
      ],
    ),  
  );
} 