import 'package:flutter/material.dart';
import 'package:psp_parking/features/payment/widgets/counter.dart';


class ParkingDuration extends StatelessWidget {
  const ParkingDuration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Parking Duration',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
              SizedBox(width: 80),
              Text('(RM0.40 per hour)',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.black)),
              SizedBox(height: 30),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '1 hour',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  color: Color.fromARGB(255, 218, 218, 218),
                  onPressed: () {},
                ),
              ),
              Container(
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '2 hours',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  color: Color.fromARGB(255, 218, 218, 218),
                  onPressed: () {},
                ),
              ),
              Container(
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '3 hours',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  color: Color.fromARGB(255, 218, 218, 218),
                  onPressed: () {},
                ),
              ),
              Container(
                child: FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Custom',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                  color: Color.fromARGB(255, 231, 211, 30),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 70),
            ],
          ),
          Row(
            children: [
              Text('Custom', style: TextStyle(fontSize: 12, color: Colors.black)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CounterButton()
              ),
            ],
          ),
          Padding(padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [  
              Text('or', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black) )
            ],
          ),
        ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('One Day Parking (for Rm3.00) ', style: TextStyle(fontSize: 15, color: Colors.black)),
              SwitchScreen()
              //Switch(),
            ],
            ),
        
            Row(
              children: [
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Divider(
                            height: 30.0,
                            thickness: 2,
                            color: Color.fromARGB(255, 207, 206, 206)
                          )
                        ],
                      ),
                    )
              ],
            ),
          ], 
      ),
      
    );
  }
}

class SwitchScreen extends StatefulWidget {  
  @override  
  SwitchClass createState() => new SwitchClass();  
}  
  
class SwitchClass extends State {  
  bool isSwitched = false;  
  
  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;  
      });  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;  
      });    
    }  
  }  
  @override  
  Widget build(BuildContext context) {  
    return Column(  
        mainAxisAlignment: MainAxisAlignment.end,  
        children:[ Transform.scale(  
            scale: 1,  
            child: Switch(  
              onChanged: toggleSwitch,  
              value: isSwitched,  
              activeColor: Color.fromARGB(255, 79, 84, 88),  
              activeTrackColor: Color.fromARGB(255, 190, 190, 184),  
              inactiveThumbColor: Color.fromARGB(255, 79, 84, 88),  
              inactiveTrackColor: Color.fromARGB(255, 190, 190, 184),  
            )  
          ),  
        ]);  
  }  
}  