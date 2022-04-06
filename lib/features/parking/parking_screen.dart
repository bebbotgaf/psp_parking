import 'package:flutter/material.dart';
import 'package:psp_parking/features/parking/widgets/appbar_parking.dart';
import 'package:psp_parking/features/parking/widgets/search.dart';

import '../payment/payment_screen.dart';


class ParkingScreen extends StatefulWidget {
  const ParkingScreen({ Key? key }) : super(key: key);

  @override
  State<ParkingScreen> createState() => _ParkingScreenState();
}

class _ParkingScreenState extends State<ParkingScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        Container(
           child: Column(
             children: [
               appbar_parking(),
               Search(),

               GestureDetector(
                    onTap: (){   
                      Navigator.push(   
                        context,
                        MaterialPageRoute(builder: (context) => PaymentScreen())
                      );
                    },
                    child: 
                      CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                      AssetImage('assets/bbb.png'),
                    backgroundColor: Colors.transparent,
                  ),

                  ),
             ],
           )), 
       

      ]
    );
  }
}