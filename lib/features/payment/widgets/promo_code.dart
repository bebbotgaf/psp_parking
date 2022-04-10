import 'package:flutter/material.dart';

class PromoCode extends StatelessWidget {
  const PromoCode({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card( 
      elevation: 0,
      child: Container( 
        padding: EdgeInsets.all(20),
        child: Column( 
          children: [ 
            Row( 
              children: [ 
                Expanded(child: Text("Promo Code", 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black, decoration: TextDecoration.none),))
              ],
            ), 
            Padding(padding: EdgeInsets.all(5)),
            Row(children: [
              Expanded(child: TextField( 
                decoration: InputDecoration( 
                  fillColor: Colors.grey.shade100,
                  filled: true, 
                  hintText: 'Enter your promo code', 
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white), 
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ))],)
          ],
        ),
      ),

      
    );
  }
}