import 'package:flutter/material.dart';

import '../../payment/payment_screen.dart';

class Location extends StatelessWidget {
  const Location({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment: Alignment.topLeft, child: Text("Near by Parking", 
              style: TextStyle( 
                decoration: TextDecoration.none, fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black
              ),),),
            ),
            Container(
              width: 500,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/mpk.gif', height: 70.0, width: 80.0),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,    
                                children: [
                                  Text('Majlis Perbandaran Kajang', style: TextStyle(fontWeight: FontWeight.bold)),
                                  SizedBox(height: 10),
                                  Text('3 parking area',style: TextStyle(fontSize: 12.0)),
                                  ],
                              ),
                              ],
                   ),
                   Expanded(child:Container( 
                     color: Colors.transparent, height: 10)), 

                     Container(child: IconButton( 
                       icon: Icon(Icons.arrow_forward_ios), 
                       onPressed: () { 
                         Navigator.push(context, MaterialPageRoute
                         (builder: (context) =>  PaymentScreen()));
                       }),)
                  
        ],
      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*  Column( 
                    mainAxisAlignment:MainAxisAlignment.end,
                    children: [ 
                      IconButton(
                        icon: Icon(Icons.arrow_forward), 
                        onPressed: () { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen()));
                        }) 
                        */