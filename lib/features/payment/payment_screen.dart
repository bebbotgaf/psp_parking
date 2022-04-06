import 'package:flutter/material.dart';
import 'package:psp_parking/features/payment/widgets/appbar_payment.dart';
import 'package:psp_parking/features/payment/widgets/parking_duration.dart';
import 'package:psp_parking/features/payment/widgets/selected_location.dart';

class PaymentScreen extends StatefulWidget {

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        Container(
           child: Column(
             children: [
               appbar_payment(),
               SelectedLocation(),
               ParkingDuration(),
             ],
           )), 
       

      ]
    );
  }
}