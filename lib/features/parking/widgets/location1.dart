import 'package:flutter/material.dart';
import '../../payment/payment_screen.dart';

class Location1 extends StatelessWidget {
  const Location1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
                    Image.asset('assets/mbpj.png', height: 70, width: 80),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,    
                              children: [
                                Text('Majlis Perbandaran Petaling Jaya', style: TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                Text('3 parking area',style: TextStyle(fontSize: 12.0)),
                                ],
                            ),
                            ],
                 ),
                 Expanded(child: Container( 
                   color: Colors.transparent, height: 10)),

                   Container(child: IconButton(  
                     icon: Icon(Icons.arrow_forward_ios,),
                     onPressed: () { 
                       Navigator.push(context, MaterialPageRoute
                       (builder: (context) => PaymentScreen())); 
                     },
                   ),)
                
      ],
    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}