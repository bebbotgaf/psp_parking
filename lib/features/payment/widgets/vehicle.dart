import 'package:flutter/material.dart';

class Vehicle extends StatelessWidget {
  const Vehicle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My Vehicle", style: TextStyle( fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),),
              Text("change", style: TextStyle( fontSize: 12, fontWeight: FontWeight.bold, color: Colors.blue, decoration: TextDecoration.none),),
            ],
          ),
          
          Container(
            width: 400, height: 120, 
            child: Card( elevation: 2,
              child: Row(
                children: [
                  Align(alignment: Alignment.center),
                  SizedBox(width: 70),
                  Column( 
                      children: [
                        Image.asset('mycar.png', height: 80, width: 200,),
                        Text('Mc Laren P1', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.end),
                        SizedBox(height: 2),
                        
                        Row( 
                         children: <Widget> [ 
                        SizedBox(height: 10),
                        Text('MY CAR',style: TextStyle(fontSize: 10, color: Colors.black, decoration: TextDecoration.none)),
                        SizedBox(height: 10),
                        Icon(Icons.brightness_1, size: 3), 
                        SizedBox(height: 10),
                        Container( width: 10), 
                        Text('VFC 9917', style: TextStyle( fontSize: 10, decoration: TextDecoration.none)),
                         ] 
                        )
                        
                      ],
                  ),
                ],
              ),
              ),
            ),
          
        ],
      ),
    );
  }
}
   