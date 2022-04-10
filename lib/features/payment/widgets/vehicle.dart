import 'package:flutter/material.dart';

class Vehicle extends StatelessWidget {
  const Vehicle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Align(alignment: Alignment.topLeft, child: Text("My Vehicle", style: TextStyle( fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 400, height: 150, 
              child: Card( elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Align(alignment: Alignment.center),
                      SizedBox(width: 70),
                      Column( 
                          children: [
                            Image.asset('bbb.png', height: 100, width: 200,),
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
              ),
          ),
          
        ],
      ),
    );
  }
}
   