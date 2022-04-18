import 'package:flutter/material.dart';

class SelectedLocation extends StatelessWidget {
  const SelectedLocation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
           
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Image.asset('assets/mbpj.png', height: 50.0, width: 50.0),
            SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Majlis Bandaraya Petaling', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
                   Text('Jaya', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.black)),
                ],
              ),   
          ]),
        
      ),
    );
  }
}