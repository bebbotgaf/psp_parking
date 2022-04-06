import 'package:flutter/material.dart';
import 'package:psp_parking/features/home/widgets/appbar_home.dart';
import 'package:psp_parking/features/home/widgets/bottomnavbar_home.dart';
import 'package:psp_parking/features/home/widgets/news.dart';
import 'package:psp_parking/features/home/widgets/notify.dart';
import 'package:psp_parking/features/home/widgets/parking_ticket.dart';
import 'package:psp_parking/features/home/widgets/reward.dart';
import 'package:psp_parking/features/home/widgets/services.dart';
import 'package:psp_parking/features/home/widgets/wallet.dart';
import 'package:psp_parking/features/home/widgets/wallet_reward.dart';

class HomeScreen extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      title: 'SmartParking',
      home: Scaffold(  
        appBar: 
          appbar_home( title:'SmartParking'),
        body: SafeArea(
          child: 
            Column(
              children: [
                WalletReward(),
                Notify(),
                Services(),
                News(),
                ParkingTicket(),
        
              ],
               
            ),




          
        ),
        bottomNavigationBar: bottomnavbar_home(),
      ),
    );
  }
}
