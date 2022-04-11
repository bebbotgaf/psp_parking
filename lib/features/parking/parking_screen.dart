import 'dart:html';

import 'package:flutter/material.dart';
import 'package:psp_parking/features/parking/widgets/app_bar_parking.dart';
import 'package:psp_parking/features/parking/widgets/location.dart';
import 'package:psp_parking/features/parking/widgets/location1.dart';
import 'package:psp_parking/features/parking/widgets/maps.dart';
import 'package:psp_parking/features/parking/widgets/search.dart';


class ParkingScreen extends StatefulWidget {
  const ParkingScreen({ Key? key }) : super(key: key);

  @override
  State<ParkingScreen> createState() => _ParkingScreenState();
}

class _ParkingScreenState extends State<ParkingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SafeArea(child: Column(
      children: [ 
        Container(
           child: Column(
             children: [
               app_bar_parking(context),
               Search(), 
               Maps(),
               Location(),
               Location1()
            
            
             ],
           )), 
       

      ]
    )
      )
    );
  }
}