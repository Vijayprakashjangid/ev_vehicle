import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ev_vehicle/utils/car_information.dart';
import 'package:ev_vehicle/utils/color.dart';
import 'package:ev_vehicle/widgets/custom_button.dart';
import 'package:ev_vehicle/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastController = TextEditingController();

  final CollectionReference _user =
  FirebaseFirestore.instance.collection('user');

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _lastController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 90,),
                    Text('Please tell us a bit more \n about yourself',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Text('First Name', textAlign: TextAlign.left,
                          style: TextStyle(color: namingcolor),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    CustomTextField(
                        controller: _nameController, hintText: 'First Name'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Last Name', textAlign: TextAlign.left,
                          style: TextStyle(color: namingcolor),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    CustomTextField(
                        controller: _lastController, hintText: 'Last Name'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Email', textAlign: TextAlign.left,
                          style: TextStyle(color: namingcolor),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    CustomTextField(
                        controller: _emailController, hintText: 'Email'),
                  ],
                ),
              ),


              CustomButton(text: 'Sumbit', onPressed: ()

              async {
                final String name = _nameController.text;
                final String last = _lastController.text;
                final String email = _emailController.text;
                if (name != null || last != null || email != null) {
                  await _user.add({"name": name, "last": last, "email": email});
                  _nameController.text = '';
                }
                Navigator.pushNamed(context, '/carinformation');
              },
              ),
            ],
          ),
        ),
      );
}

}

