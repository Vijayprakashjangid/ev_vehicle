import 'package:ev_vehicle/screens/phone_login.dart';
import 'package:ev_vehicle/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({Key? key}) : super(key: key);



  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var code = "";

    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Verify phone',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 50),
                        Text(
                          'Code is sent to 123 456 7890',
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Pinput(
                      length: 6,
                      showCursor: true,
                      onChanged: (value) {
                        code = value;
                      },
                      // onCompleted: (pin) => print(pin),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Did\'t receive code? Request again',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: 'Verify and Create Account',
                onPressed: ()

                // async
                {
                  //  try{
                    //  PhoneAuthCredential credential =
                    //  PhoneAuthProvider.credential(
                      //    verificationId: PhoneLogin.verify, smsCode: code);

                      // Sign the user in (or link) with the credential
                     // await auth.signInWithCredential(credential);
                     // Navigator.pushNamed(context, '/personalinformation');
                   // }catch(e){
                     // print("Enter Valid OTP");

                   // }
                  Navigator.pushNamed(context, '/personalinformation');
                 },




              ),
            ]),
      ),
    );
  }
}
