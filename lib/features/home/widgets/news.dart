import 'package:flutter/material.dart';

class News extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Text("What's New"),),
            Container(
              width: 500,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  mainAxisSize: MainAxisSize.min,
        children: <Widget>[
       
              Image.asset('assets/bbb.png', height: 70.0, width: 80.0),
              Row(
                children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,    
                      children: [
                        Text('Free parking for 3 days near', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Majlis perbandaran Shah Alam', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text('Happy new year free parking',style: TextStyle(fontSize: 12.0)),
                      ],
                  ),
                ],
              ),
           
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