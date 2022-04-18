import 'package:flutter/material.dart';
import 'package:psp_parking/features/home/home_screen.dart';

import 'features/payment/payment_screen.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

// const String homeLabel = 'Home';
// const String activityLabel = 'Activity';
// const String walletLabel = 'Wallet';
// const String notificationLabel = 'Bell';
// const String settingLabel = 'Settings';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _isSelected = 0;

  final List<bool> _animByPages = [false, false, false, false, false];
  List<bool> modifiedPages = [];

//   bool _isHomeVisible = false;
//   bool _isActivityVisible = false;
//   bool _isWalletVisible = false;
//   bool _isNotificationVisible = false;
//   bool _isSettingVisible = false;

  final List<BottomNavItem> _listBottomNavItems = [
    BottomNavItem(title: 'Home', icon: Icons.home),
    BottomNavItem(title: 'Activity', icon: Icons.receipt),
    BottomNavItem(title: 'Wallet', icon: Icons.credit_card),
    BottomNavItem(title: 'Notification', icon: Icons.notifications),
    BottomNavItem(title: 'Settings', icon: Icons.person)
  ];

  final List<Page> _listPages = [
    const Page(
      
      key: Key('page1'),
      title: 'Home',
      duration: Duration(seconds: 1),
    ), //isAnimStart: _isHomeVisible),
    const Page(
      key: Key('page2'),
      title: 'Activity',
      duration: Duration(seconds: 1),
    ), //isAnimStart: _isActivityVisible),
    const Page(
      key: Key('page3'),
      title: 'Wallet',
      duration: Duration(seconds: 1),
    ), //isAnimStart: _isWalletVisible),
    const Page(
      key: Key('page4'),
      title: 'Notification',
      duration: Duration(seconds: 1),
    ), //isAnimStart: _isNotificationVisible),
    const Page(
      key: Key('page5'),
      title: 'Settings',
      duration: Duration(seconds: 1),
    ) //isAnimStart: _isSettingVisible),
  ];

  Page? _currentPage;

  @override
  void initState() {
    modifiedPages.addAll(_animByPages);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
              backgroundColor: Colors.black87,
              title: const Text('SmartParking \u{1f696}')),
          body: _listPages[_isSelected],
          persistentFooterButtons: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                _listBottomNavItems.length,
                (index) {
                  return BottomNavItem(
                      title: _listBottomNavItems[index].title,
                      icon: _listBottomNavItems[index].icon,
                      isSelected: _isSelected == index,
                      onTap: () {
                        setState(() {
                          print('setState bottomNavItem...');
                          _isSelected = index;
                        });
                      });
                },
              ),
            ),
          ]),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final Function()? onTap;

  const BottomNavItem(
      {required this.title,
      required this.icon,
      this.isSelected = false,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
        padding: const EdgeInsets.all(5),
        width: 50,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected == true ? Colors.black87 : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          Icon(icon,
              color: isSelected == true ? Colors.white : Colors.black87,
              size: 17),
          const SizedBox(height: 3),
          isSelected
              ? Text(
                  title,
                  style: TextStyle(
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : Colors.black87),
                )
              : Container(),
        ]),
      ),
    );
  }
}

class Page extends StatefulWidget {
  final String title;
  final bool isAnimStart;
  final Duration duration;

  const Page(
      {required this.title,
      this.isAnimStart = false,
      required Key key,
      required this.duration})
      : super(key: key);

  @override
  _Page createState() => _Page();
}

class _Page extends State<Page> with SingleTickerProviderStateMixin {
  late AnimationController animation;
  late Animation<double> _fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1.0).animate(animation);

    animation.forward();
  }

  @override
  void didUpdateWidget(Page oldWidget) {
    super.didUpdateWidget(oldWidget);
    animation.duration = widget.duration;
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeInFadeOut,
      child: Center(
        child: HomeScreen()
      ),
    );
  }
}