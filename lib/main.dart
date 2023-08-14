import 'package:ev_vehicle/screens/home_screen.dart';
import 'package:ev_vehicle/screens/otp_verify_screen.dart';
import 'package:ev_vehicle/screens/phone_login.dart';
import 'package:ev_vehicle/screens/profile_components/profile_setting.dart';
import 'package:ev_vehicle/screens/start_screen.dart';
import 'package:ev_vehicle/utils/car_information.dart';
import 'package:ev_vehicle/utils/personal_information.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),



      routes: {
        '/phonelogin': (context) => PhoneLogin(),
        '/otpverifyscreen': (context) => OtpVerify(),
        '/carinformation': (context) => CarInformation(),
        '/homescreen': (context) => HomeScreen(),
        '/personalinformation': (context) => PersonalInformation(),
        '/carinformation': (context) => CarInformation(),
        '/profilesetting': (context) => ProfileSetting(),

      },
    );
  }
}
