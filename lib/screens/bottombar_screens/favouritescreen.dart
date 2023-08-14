import 'package:ev_vehicle/utils/color.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text('Favourite Chargers', style: TextStyle(color: Colors.black),)),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 150,),
              Image.asset('assets/img/ev_favourite.jpg', height: 150,),
              Text('You haven\'t Selected any Favourite Charger', style: TextStyle(
                  fontSize: 12, fontFamily: AutofillHints.streetAddressLevel1, fontWeight: FontWeight.bold
              ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                child: Text('click on star icon to select your favourite charger', style: TextStyle(
                    fontSize: 10, color: Colors.grey
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

