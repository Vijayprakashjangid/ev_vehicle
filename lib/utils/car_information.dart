import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ev_vehicle/utils/color.dart';
import 'package:ev_vehicle/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class CarInformation extends StatefulWidget {
  const CarInformation({Key? key}) : super(key: key);

  @override
  State<CarInformation> createState() => _CarInformationState();
}

class _CarInformationState extends State<CarInformation> {
  final CollectionReference _vnumber =
      FirebaseFirestore.instance.collection('vnumber');

  final TextEditingController _vehiclenumberController =
      TextEditingController();

  @override
  void dispose() {
    _vehiclenumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    'Please Enter your vehical \n number Which is shown no your \n Car Screen',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        'Vehical Number',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: namingcolor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                      controller: _vehiclenumberController,
                      hintText: 'Vehicle Number'),
                ],
              ),
            ),
            CustomButton(
              text: 'Sumbit',
              onPressed: () async {
                final double? number =
                    double.tryParse(_vehiclenumberController.text);
                if (number != null) {
                  await _vnumber.add({"number": number});
                  _vehiclenumberController.text = '';
                }
                Navigator.pushNamed(context, '/homescreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
