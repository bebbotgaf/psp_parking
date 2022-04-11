import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({ Key? key }) : super(key: key);

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  int _counter = 0;

  void increment() {  
    setState(() {
      _counter++;
    });
  }

  void decrement() {  
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children:<Widget> [  
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 35.0,
                color: Color.fromARGB(255, 218, 218, 218),
                child: FlatButton(
                  child: Text('$_counter hours', style: TextStyle(fontSize: 12.0),),
                  onPressed: () {},
                ),
              ),
            ),

            SizedBox(width: 15.0,),

            FloatingActionButton.small(
              backgroundColor: Color.fromARGB(255, 148, 142, 142),
              shape: RoundedRectangleBorder(   
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              onPressed: increment,
              child: Icon(Icons.add),
              tooltip: 'Increment',                
            ),

            SizedBox(width: 10.0,),
         
            FloatingActionButton.small(
              backgroundColor: Color.fromARGB(255, 148, 142, 142),
              shape: RoundedRectangleBorder(   
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              onPressed: decrement,
              child: Icon(Icons.remove),
              tooltip: 'Decrement',
            ),
          ],
        ),
      ],
    );
  }
}