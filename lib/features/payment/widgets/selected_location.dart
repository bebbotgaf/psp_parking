import 'package:flutter/material.dart';

class SelectedLocation extends StatelessWidget {
  const SelectedLocation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
           
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Image.asset('assets/bbb.png', height: 50.0, width: 50.0),
            SizedBox(width: 25),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Majlis Bandaraya Petaling', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                     Text('Jaya', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ],
                ),
              ),   
          ]),
        
      ),
    );
  }
}