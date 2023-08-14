import 'package:ev_vehicle/utils/color.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text('Wallet', style: TextStyle(color: Colors.black),)),
        automaticallyImplyLeading: false,
      ),
      body: Container(

        child: Center(child: Text('Coming Soon', style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}

