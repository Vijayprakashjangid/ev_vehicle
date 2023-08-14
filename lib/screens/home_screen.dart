import 'dart:async';

import 'package:ev_vehicle/screens/bottombar_screens/profilescreen.dart';
import 'package:ev_vehicle/screens/bottombar_screens/favouritescreen.dart';
import 'package:ev_vehicle/screens/bottombar_screens/map_screen.dart';
import 'package:ev_vehicle/screens/bottombar_screens/tripscreen.dart';
import 'package:ev_vehicle/screens/bottombar_screens/walletscreen.dart';
import 'package:ev_vehicle/utils/color.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    const MapScreen(),
    const TripScreen(),
    const WalletScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       /* appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('EV Charging Station', style: TextStyle(color: Colors.black),),
          centerTitle: true,
        ),
         extendBodyBehindAppBar: true,
*/


      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: bottomselected,
        unselectedItemColor: bottomunselected,
        onTap: onPageChanged,
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map_outlined,
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.route_outlined,
            ),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet_outlined,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_outline,
            ),
            label: 'Favourite',
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}



