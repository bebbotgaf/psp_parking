import 'package:flutter/material.dart';

class Reward extends StatelessWidget {

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
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Icon(Icons.card_giftcard_rounded),
                      Text('Rewards'),
                    ],
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text('110'),
                    ],
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text('Points'),
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