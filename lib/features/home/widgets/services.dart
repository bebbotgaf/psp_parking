import 'package:flutter/material.dart';
import 'package:psp_parking/features/parking/parking_screen.dart';

class Services extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: (){   
                      Navigator.push(   
                        context,
                        MaterialPageRoute(builder: (context) => ParkingScreen())
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
                  Text('Parking'),
                  Text(''),

                  SizedBox(height: 15),
  
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                      AssetImage('assets/bbb.png'),
                        backgroundColor: Colors.transparent,
                  ),
                  Text('Officer'),
                  Text('Spotted'),
                ],
              )
            ]
            ),
            Row(children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                      AssetImage('assets/bbb.png'),
                        backgroundColor: Colors.transparent,
                  ),
                  Text('Roadside'),
                  Text('Assistance'),
                  SizedBox(height: 15),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                      AssetImage('assets/bbb.png'),
                        backgroundColor: Colors.transparent,
                  ),
                  Text('Chatbot'),
                  Text(''),
                ],
              )
            ]
            ),
            Row(children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                      AssetImage('assets/bbb.png'),
                        backgroundColor: Colors.transparent,
                  ),
                  Text('MBPP'),
                  Text('Services'),
                  SizedBox(height: 15),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                      AssetImage('assets/bbb.png'),
                        backgroundColor: Colors.transparent,
                  ),
                  Text('Car'),
                  Text('Insurance'),
                ],
              )
            ]
            ),
            Row(children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                      AssetImage('assets/bbb.png'),
                        backgroundColor: Colors.transparent,
                  ),
                  Text('E-Wallet'),
                  Text(''),
                  SizedBox(height: 15),
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage:
                      AssetImage('assets/bbb.png'),
                        backgroundColor: Colors.transparent,
                  ),
                  Text('More'),
                  Text(''),
                ],
              )
            ]
            ),
          ],
        ),
      ),


  );
}
}
  