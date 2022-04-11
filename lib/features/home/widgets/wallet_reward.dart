import 'package:flutter/material.dart';
import 'package:psp_parking/features/home/widgets/rewards.dart';
import 'package:psp_parking/features/home/widgets/wallet_amt.dart';

class WalletReward extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [ 
                    Wallet(),
                   
                    Reward()
                  ],
                ),])
    );
  }
}