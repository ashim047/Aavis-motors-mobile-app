import 'package:aaviss_motors/Features/Presentation/vechicle.dart';
import 'package:aaviss_motors/Features/Presentation/widgets/Custombutton.dart';
import 'package:aaviss_motors/Features/Presentation/widgets/cus_appbar.dart';

import 'package:aaviss_motors/Features/Presentation/widgets/inputField.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Models.dart/data_model/user_info/user_data.dart';

class PersonalData extends StatefulWidget {
  final nameController;
  final name;
  final Users userDetails;
  PersonalData({
    super.key,
    this.nameController,
    this.name,
    required this.userDetails,
  });

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  Users userDetails = Users();
  TextEditingController nameController = TextEditingController();
  String? name;
  String? address;
  int? number;

  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Form(
              key: form,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CusAppBar(),
                    Text(
                      textAlign: TextAlign.left,
                      'Fill the form below to know resale\n value of your vehicle',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          child: Text('1'),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Personal Information',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Personnel data',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InputField(
                      // Validator: (value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                      //     return 'Enter Above Field Correctly';
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      onSaved: (newValue) {
                        name = newValue;
                      },
                      HintText: 'Full Name',
                      readonly: false,
                    ),
                    InputField(
                      // Validator: (value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                      //     return 'Enter Above Field Correctly';
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      onSaved: (newValue) {
                        address = newValue;
                      },
                      HintText: 'Address',
                      readonly: false,
                    ),
                    InputField(
                      // Validator: (value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                      //     return 'Enter Above Field Correctly';
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      onSaved: (newValue) {
                        number = int.tryParse(newValue);
                      },
                      HintText: 'Contact',
                      keyboardtype: TextInputType.number,
                      inputformatter: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      readonly: false,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CusButton(
                          text: 'Next',
                          Colors: Colors.blue,
                          ontap: () {
                            if (form.currentState!.validate()) {
                              form.currentState?.save();
                              userDetails = userDetails.copyWith(
                                  fullName: name,
                                  address: address,
                                  phoneNo: number);
                              print(userDetails);
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return VehicleInformation(
                                    userdetails: userDetails,
                                  );
                                },
                              ));
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
