import 'package:flutter/material.dart';

class ParkingTicket extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              width: 500,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  mainAxisSize: MainAxisSize.min,
        children: <Widget>[
       
              Image.asset('assets/bbb.png', height: 70.0, width: 80.0),
              Expanded(
                child: Row(  
                  children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,    
                        children: [
                          Text('Parking Ticket', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text('Majlis Perbandaran Shah...',style: TextStyle(fontSize: 12.0)),
                        ],
                    ),
                  ],
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('45 minutes'),
                      SizedBox(height: 10),
                      Text('Time Left',style: TextStyle(fontSize: 12.0)),
                  ],)
                ],
              )
           
        ],
      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}