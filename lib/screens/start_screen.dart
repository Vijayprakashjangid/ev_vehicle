import 'package:ev_vehicle/utils/color.dart';
import 'package:ev_vehicle/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
       body: SafeArea(
         child: Container(
          margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                SizedBox(height: 100,),
                Image.asset(
                    'assets/img/ev1.jpg',
                    width: 600,
                    height: 130,
                  ),
                SizedBox(height: 10,),
              Container(
                child: Column(
                  children: [
                    /*Text(
                      'All in One Solution for \n Optimizing Your Car Charging Experience',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                    ),*/
                    Text(
                      'Charge Anywhere',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(height: 10,),
                    Text(

                      'We support all types of EV charging.\n Install one application and find all types of charging station.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade700
                      ),
                    ),
                  ],
                ),
              ),




                CustomButton(text: 'Start Using', onPressed: () {
                      Navigator.pushNamed(context, '/phonelogin');
                    }),

              ],

            ),
      ),
       ),


    );


  }
}
