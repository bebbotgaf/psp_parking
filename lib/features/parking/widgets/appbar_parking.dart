import 'package:flutter/material.dart';

AppBar appbar_parking ({String title = ''}) { 

return AppBar( 
    backgroundColor: Colors.white, 
    centerTitle: true,
    title: Text('Parking & Pay'), 
    titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
    leading: IconButton(  
      icon: Icon(Icons.arrow_back_ios_new_outlined, 
      size: 20, 
      color: Colors.lightBlue,),
      onPressed: () {
       // Navigator.pop(context);  
      },
    ),
        
  );
}