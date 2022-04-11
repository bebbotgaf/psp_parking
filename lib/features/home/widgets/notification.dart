import 'package:flutter/material.dart';

class Notify extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 485.0,  
      height: 200.0,
      decoration: BoxDecoration(  
        image: DecorationImage(    
          image: AssetImage("assets/park.png"),
          fit: BoxFit.fill
        )
      ),

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget> [
          new Container(    
               alignment: new FractionalOffset(1.0, 0.0),
            child: Icon(Icons.cancel)
          ),
        ],
      )
    );
  }
}

//button tak siap lagi