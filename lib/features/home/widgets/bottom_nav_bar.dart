import 'package:flutter/material.dart';

BottomNavigationBar bottomnavbar_home(){  
   return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.feed_outlined), label: 'Activity'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet_outlined),
                    label: 'Wallet'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chat_bubble_outline),
                    label: 'Notification'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ],

   );
}

