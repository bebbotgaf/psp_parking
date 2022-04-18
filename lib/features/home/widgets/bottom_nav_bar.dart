import 'package:flutter/material.dart';
import '../../payment/payment_screen.dart';
import '../home_screen.dart';


class NavBar extends StatefulWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {


  int _isSelected = 0; //if value 2, highlighted akan pergi ke wallet page

  final List<BottomNavItem> _listBottomNavItems = const [
    BottomNavItem(title:'Home', icon:Icons.home),
    BottomNavItem(title:'Activity', icon:Icons.receipt),
    BottomNavItem(title:'Wallet', icon:Icons.credit_card),
    BottomNavItem(title:'Notification', icon:Icons.notifications),
    BottomNavItem(title:'Settings', icon:Icons.person)
    
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(_listBottomNavItems.length, 
            (index) { 
              return BottomNavItem(
              title: _listBottomNavItems[index].title, 
              icon: _listBottomNavItems[index].icon, 
              isSelected: _isSelected == index, 
              onTap: () {  
                setState(() {   
                  _isSelected = index;
                  if(_listBottomNavItems[index].title == 'Home') {  
                    Navigator.push(context,
                     MaterialPageRoute (builder: (context) => HomeScreen(), 
                     )); 
                  } else if (_listBottomNavItems[index].title == 'Activity') { 
                    Navigator.push(context,
                     MaterialPageRoute (builder: (context) => PaymentScreen(), 
                     )); 
                  } else if (_listBottomNavItems[index].title == 'Wallet') { 
                    Navigator.push(context,
                     MaterialPageRoute (builder: (context) => PaymentScreen(), 
                     )); 
                } else if (_listBottomNavItems[index].title == 'Notification') { 
                    Navigator.push(context,
                     MaterialPageRoute (builder: (context) => PaymentScreen(),  
                     )); 
                } else if (_listBottomNavItems[index].title == 'Settings') { 
                    Navigator.push(context,
                     MaterialPageRoute (builder: (context) => PaymentScreen(), 
                     ));
          
              } 
                } );
            }
              );
            })
           );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool? isSelected;
  final Function()? onTap;
  
  const BottomNavItem({required this.title, 
                      required this.icon, 
                      this.isSelected, 
                      this.onTap
                      });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        width: 50,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected == true ? Colors.black87: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
          Icon(icon, color: isSelected == true ? Colors.white: Colors.black87, size: 20),
          const SizedBox(height: 2),
          Text(
        title,
        style: TextStyle(fontSize: 7,fontWeight: FontWeight.bold,
                        color: isSelected == true ? Colors.white: Colors.black87),
      )]),),
    );
  }
}