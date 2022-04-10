import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../parking/parking_screen.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      height: 50, 
      width: double.maxFinite, 
      decoration: BoxDecoration( 
        color: Colors.grey.shade200
      ),

      child: Row( 
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [ 
          Column( 
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [ 
              Text('Total payment', style: TextStyle( fontSize: 15, decoration: TextDecoration.none, color: Colors.grey.shade800)), 
              SizedBox(height: 5), 
              Text('RM 46.00', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10, decoration: TextDecoration.none),)
            ],
          ), 
          SizedBox(width: 70),

          Image.asset('bbb.png', height: 30, width: 50), 

          Spacer(),
          Column( 
            children: [ 
              Container( height: 50, width: 150, color: Colors.black,
                child: Align( 
                  alignment: Alignment.center, 
                  child: TextButton(child: Text('PAY', style: TextStyle(color: Colors.white)),
                  onPressed: () { 
                    showAlertDialog(context);
                  },),
                ),
              )
            ],
          ),
        ]
      ),
    );
  }
}

void showAlertDialog(BuildContext context) {
  showDialog(context: context,
   builder: (BuildContext context) 
   { return CupertinoAlertDialog( 
     title: Text("Payment Confirmation", style: TextStyle( fontWeight: FontWeight.bold),), 
     content: Text("Are you sure with your payment?"), 
     actions: [ 
       CupertinoDialogAction(child: Text('Cancel'), 
       onPressed: () { Navigator.of(context).pop();
       }
       ), 
       CupertinoDialogAction
       (child: Text("Yes"), 
       onPressed: () { 
         Navigator.push(context, 
         MaterialPageRoute(builder: (context) => const ParkingScreen()));
        showSecond(context);
       }, 
       )

     ],
   ); 
   }, );
}

void showSecond( BuildContext context) {
   showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Icon(Icons.check_circle_outline, size: 80, color: Colors.green),
        content: Text("Thank you for paying with us", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        actions: [
          Center(  
            child: Container(
              height: 50, width: 100,
            decoration: BoxDecoration( color: Colors.black, borderRadius: BorderRadius.circular(20.0)),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Okay', style: TextStyle(color: Colors.white, fontFamily: 'helvetica_neue_light')),
            ),
            
          ),
          )
        ],
      ),
    );
}