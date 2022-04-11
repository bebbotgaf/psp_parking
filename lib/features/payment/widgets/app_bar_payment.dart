import 'package:flutter/material.dart';

AppBar appbar_payment (BuildContext context, {String title = ''}) { 

return AppBar( 
    backgroundColor: Colors.white, 
    centerTitle: true,
    title: Text('Payment'), 
    titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
    leading: GestureDetector(
      child: IconButton(  
      icon: Icon(Icons.arrow_back_ios_new_outlined, 
      size: 20, 
      color: Colors.lightBlue,),
      onPressed: () {
      Navigator.pop(context);  
      },
    ),
    )
  );
}