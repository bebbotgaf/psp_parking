import 'package:flutter/material.dart';


class ParkingDuration extends StatelessWidget {
  const ParkingDuration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Parking Duration',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black)),
                SizedBox(width: 80),
                Text('RM0.40 per hour)',
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
                  child: Container(
                    child: FlatButton(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '6 Hours',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                      color: Color.fromARGB(255, 218, 218, 218),
                      onPressed: () {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 40,
                    child: FlatButton(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      ),
                      color: Color.fromARGB(255, 162, 161, 161),
                      onPressed: () {},
                    ),
                  ),
                ),
               Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 40,
                      child: FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ),
                        color: Color.fromARGB(255, 162, 161, 161),
                        onPressed: () {},
                      ),
                    ),
                  ),
                
              ],
            ),
            Padding(padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [  
                Text('or', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black) )
              ],
            ),
          ),

            Row(
              children: [
                Text('One Day Parking ', style: TextStyle(fontSize: 15, color: Colors.black)),
                Text('(for ', style: TextStyle(fontSize: 12, color: Colors.black)),
                Text('RM3.00)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black)),
                //Switch(),
              ],
              ),
          
              Row(
                children: [
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Divider(
                              height: 100.0,
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
        
      ),
    );
  }
}
