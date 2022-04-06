import 'package:flutter/material.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column( 
    
      children: <Widget> [ 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container( 
                decoration: BoxDecoration(
                border: Border.all(
                color: Colors.black,
                width: 10,),
                ),
                child: Text('Where do you want to park?', style: TextStyle(fontSize: 5),),
                
                
              )
            

               
                 


            
            ],
          ),
        )
      ]
      );
      

  }
}