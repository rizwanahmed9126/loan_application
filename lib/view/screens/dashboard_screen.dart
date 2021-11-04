import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/components/tabs/gf_tabbar.dart';
import 'package:getwidget/components/tabs/gf_tabbar_view.dart';
import 'package:loan/model/models/constants/constants.dart';
import 'package:loan/view/screens/dashboard_screen_1.dart';
import 'package:loan/view/screens/dashboard_screen_2.dart';
import 'package:loan/view/screens/dashboard_screen_3.dart';
import 'package:loan/view/screens/dashboard_screen_4.dart';
import 'package:loan/view/screens/dashboard_screen_5.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();

}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {


  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  bool? active;

  List<Widget> _items = [
    DashboardScreen1(),
    DashboardScreen2(),
    DashboardScreen3(),
    DashboardScreen4(),
    DashboardScreen5()
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GFTabBarView(controller: tabController, children: <Widget>[
        DashboardScreen1(),
        DashboardScreen2(),
        DashboardScreen3(),
        DashboardScreen4(),
        DashboardScreen5(),
      ]),
      bottomNavigationBar: GFTabBar(
        unselectedLabelColor: Colors.red,
        tabBarColor: Colors.black,

        length: 5,
        controller: tabController,
        tabs: [
          Tab(
            icon: Image.asset('assets/images/home.png',color: Colors.white,),

          ),
          Tab(
            icon: Image.asset('assets/images/wallet.png',color: Colors.white,),

          ),
          Tab(
            icon: Image.asset('assets/images/transactions.png',color: Colors.white,),

          ),
          Tab(
            icon: Image.asset('assets/images/stats.png',color: Colors.white,),

          ),
          Tab(
            icon: Image.asset('assets/images/person1.png',color: Colors.white,),

          ),
        ],
      ),
      // Center(
      //     child: IndexedStack(
      //       index: _selectedIndex,
      //       children: _items,
      //     ) //_items.elementAt(_index),
      // ),
      // bottomNavigationBar: _showBottomNav(),
    );
  }

  Widget _showBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: _selectedIndex == 0
                    ? sSky
                    : Color(0xFFFBC392),
            size: 20,
          ),
          // Container(
          //   width: 35,
          //   height: 32,
          //   decoration: BoxDecoration(
          //     color: _selectedIndex == 0
          //         ? sSky
          //         : Color(0xFFFBC392),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(50),
          //     ),
          //   ),
          //   child: Icon(
          //     Icons.home_filled,
          //   ),
          // ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: _selectedIndex == 1
                ? sSky
                : Color(0xFFFBC392),
            size: 20,
          ),
          // Container(
          //   width: 35,
          //   height: 32,
          //   decoration: BoxDecoration(
          //     color: _selectedIndex == 1
          //         ? sSky
          //         : Color(0xFFFBC392),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(50),
          //     ),
          //   ),
          //   child: Icon(
          //     Icons.headset_mic_rounded,
          //   ),
          // ),
          label: 'Support',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: _selectedIndex == 2
                ? sSky
                : Color(0xFFFBC392),
            size: 20,
          ),
          // Container(
          //   width: 35,
          //   height: 32,
          //   decoration: BoxDecoration(
          //     color: _selectedIndex == 2
          //         ? sSky
          //         : Color(0xFFFBC392),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(50),
          //     ),
          //   ),
          //   child: Icon(
          //     Icons.account_circle_sharp,
          //   ),
          // ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: _selectedIndex == 3
                ? sSky
                : Color(0xFFFBC392),
            size: 20,
          ),
          // Container(
          //   width: 35,
          //   height: 32,
          //   decoration: BoxDecoration(
          //     color: _selectedIndex == 3
          //         ? sSky
          //         : Color(0xFFFBC392),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(50),
          //     ),
          //   ),
          //   child: Icon(
          //     Icons.headset_mic_rounded,
          //   ),
          // ),
          label: 'Support',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: _selectedIndex == 4
                ? sSky
                : Color(0xFFFBC392),
            size: 30,
          ),
          // Container(
          //   width: 35,
          //   height: 32,
          //   decoration: BoxDecoration(
          //     color: _selectedIndex == 2
          //         ? sSky
          //         : Color(0xFFFBC392),
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(50),
          //     ),
          //   ),
          //   child: Icon(
          //     Icons.account_circle_sharp,
          //   ),
          // ),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: _onTap,
    );
  }

  void _onTap(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
