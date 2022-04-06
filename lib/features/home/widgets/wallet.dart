import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 70,
          child: Card(
            child: 
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Icon(Icons.local_parking_rounded),
                      Text('Wallet'),
                    ],
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text('RM'),
                    ],
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text('46.00'),
                    ],
                  ),  
                  SizedBox(width: 10),

                  Column(
                    children: [
                      Icon(Icons.arrow_right),
                    ],
                  ), 
                  
                  SizedBox(width: 20) 
                ],
              ),
            )
          ),
        ),
      ],
    );
  }
}