import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card( 
      elevation: 0,
      color: Colors.transparent,
      child: Container( 
        padding: EdgeInsets.all(20),
        child: Column( 
          children: [ 
            Row( 
              children: [ 
                Expanded(child: TextField( 
                  decoration: InputDecoration( 
                    labelText: "Where do you want to park",
                    border: OutlineInputBorder(
                      borderSide: const BorderSide( color: Color.fromARGB(255, 226, 180, 30),), 
                      borderRadius: BorderRadius.circular(5)
                    ),
                     
                    suffixIcon: Icon(Icons.map, 
                    color: Color.fromARGB(255, 209, 191, 25))
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}