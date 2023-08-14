import 'package:ev_vehicle/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  static String verify="";

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  TextEditingController countryController = TextEditingController();
  var phone = "";

  @override
  void initState() {
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 60,),
            Text(
              'EVERA',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Text(
                  'Electric vehical charging station for',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15),
                ),

                Text(
                  'Discover. Charge. Pay.',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Flexible(
              flex: 3,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 40,
                            child: TextField(
                              controller: countryController,
                              keyboardType: TextInputType.number,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                          Text(
                            "|",
                            style: TextStyle(fontSize: 33, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              onChanged: (value) {
                                phone = value;
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter Mobile Number"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     Container(
                        child: Text(
                          'You\'ll receive a 4 digit code to verify next.',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                    SizedBox(height: 30,),

                    CustomButton(
                        text: 'Request OTP',
                        onPressed: () {
                         /* await FirebaseAuth.instance.verifyPhoneNumber(
                            phoneNumber: '${countryController.text+phone}',
                            verificationCompleted: (PhoneAuthCredential credential) {},
                            verificationFailed: (FirebaseAuthException e) {},
                            codeSent: (String verificationId, int? resendToken) {
                              PhoneLogin.verify = verificationId;
                              Navigator.pushNamed(context, '/otpverifyscreen');
                            },
                            codeAutoRetrievalTimeout: (String verificationId) {},
                          );*/
                          Navigator.pushNamed(context, '/otpverifyscreen');
                        }),

                    SizedBox(height: 150,),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'By proceeding you agree to our \n Terms & conditions and Privacy Policy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),

                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),



    );
  }
}
