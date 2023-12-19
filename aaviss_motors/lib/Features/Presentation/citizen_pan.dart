import 'dart:io';

import 'package:aaviss_motors/Features/Presentation/confirmation_page.dart';
import 'package:aaviss_motors/Features/Presentation/widgets/cus_appbar.dart';
import 'package:aaviss_motors/Features/Presentation/widgets/cus_radiobutton.dart';
import 'package:aaviss_motors/Features/Presentation/widgets/inputField.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../Models.dart/data_model/user_info/user_data.dart';
import 'widgets/Custombutton.dart';

class LegalInformation extends StatefulWidget {
  Users userDetails;
  final status;
  LegalInformation({
    Key? key,
    required this.userDetails,
    this.status,
  }) : super(key: key);

  @override
  State<LegalInformation> createState() => _LegalInformationState();
}

class _LegalInformationState extends State<LegalInformation> {
  File? cFrontimage;
  File? image;
  File? billimage;
  File? renewImage;
  File? lastRew;
  File? panFront;
  File? panback;
  int active = 1;
  String? panNo;
  String? CitizenNo;
  bool toggleform = false;
  final form = GlobalKey<FormState>();

  Future<File?> getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      return File(image.path);
    }

    // setState(() {
    //   this.cFrontimage = imageTemporary;
    // });
  }

  @override
  void initState() {
    super.initState();
    print(Users());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
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
                          child: Text('3'),
                          radius: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Legal Information')
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Citizenship/Pan',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CusRadioButton(active, (value) {
                          setState(() {
                            toggleform = !toggleform;
                            active = int.parse(value.toString());
                          });
                        }, 1, Text('Citizenship')),
                        CusRadioButton(active, (value) {
                          setState(() {
                            toggleform = !toggleform;
                            active = int.parse(value.toString());
                          });
                        }, 2, Text('Pan')),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    toggleform
                        ? InputField(
                            HintText: 'Pan No.',
                            onSaved: (newValue) {
                              panNo = newValue;
                            },
                            readonly: false)
                        : InputField(
                            HintText: 'CitizenShip No.',
                            onSaved: (newValue) {
                              CitizenNo = newValue;
                            },
                            readonly: false),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    toggleform
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: GestureDetector(
                                      onTap: () async {
                                        final image2 = await getImage();
                                        if (image2 != null) {
                                          setState(() {
                                            panFront = image2;
                                          });
                                        }
                                      },
                                      child: DottedBorder(
                                        dashPattern: [10, 10],
                                        color: Colors.black,
                                        strokeWidth: 1,
                                        child: Center(
                                            child: panFront != null
                                                ? Image.file(
                                                    panFront!,
                                                    fit: BoxFit.contain,
                                                  )
                                                : Icon(Icons
                                                    .file_upload_outlined)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Pan Front Page')
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: GestureDetector(
                                      onTap: () async {
                                        final image1 = await getImage();
                                        if (image1 != null) {
                                          setState(() {
                                            panback = image1;
                                          });
                                        }
                                      },
                                      child: DottedBorder(
                                        dashPattern: [10, 10],
                                        color: Colors.black,
                                        strokeWidth: 1,
                                        child: Center(
                                            child: panback != null
                                                ? Image.file(
                                                    panback!,
                                                    fit: BoxFit.contain,
                                                  )
                                                : Icon(Icons
                                                    .file_upload_outlined)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Pan Back Page')
                                ],
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: GestureDetector(
                                      onTap: () async {
                                        final image2 = await getImage();
                                        if (image2 != null) {
                                          setState(() {
                                            cFrontimage = image2;
                                          });
                                        }
                                      },
                                      child: DottedBorder(
                                        dashPattern: [10, 10],
                                        color: Colors.black,
                                        strokeWidth: 1,
                                        child: Center(
                                            child: cFrontimage != null
                                                ? Image.file(
                                                    cFrontimage!,
                                                    fit: BoxFit.contain,
                                                  )
                                                : Icon(Icons
                                                    .file_upload_outlined)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('CitizenShip \n Front Page')
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 150,
                                    width: 150,
                                    child: GestureDetector(
                                      onTap: () async {
                                        final image1 = await getImage();
                                        if (image1 != null) {
                                          setState(() {
                                            image = image1;
                                          });
                                        }
                                      },
                                      child: DottedBorder(
                                        dashPattern: [10, 10],
                                        color: Colors.black,
                                        strokeWidth: 1,
                                        child: Center(
                                            child: image != null
                                                ? Image.file(
                                                    image!,
                                                    fit: BoxFit.contain,
                                                  )
                                                : Icon(Icons
                                                    .file_upload_outlined)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('CitizenShip \n Back Page')
                                ],
                              ),
                            ],
                          ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: GestureDetector(
                                onTap: () async {
                                  final image2 = await getImage();
                                  if (image2 != null) {
                                    setState(() {
                                      billimage = image2;
                                    });
                                  }
                                },
                                child: DottedBorder(
                                  dashPattern: [10, 10],
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  child: Center(
                                      child: billimage != null
                                          ? Image.file(
                                              billimage!,
                                              fit: BoxFit.contain,
                                            )
                                          : Icon(Icons.file_upload_outlined)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('BillBook Main Page')
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 150,
                              child: GestureDetector(
                                onTap: () async {
                                  final image1 = await getImage();
                                  if (image1 != null) {
                                    setState(() {
                                      renewImage = image1;
                                    });
                                  }
                                },
                                child: DottedBorder(
                                  dashPattern: [10, 10],
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  child: Center(
                                      child: renewImage != null
                                          ? Image.file(
                                              renewImage!,
                                              fit: BoxFit.contain,
                                            )
                                          : Icon(Icons.file_upload_outlined)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('BillBook Renewal Page')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: GestureDetector(
                            onTap: () async {
                              final image1 = await getImage();
                              if (image1 != null) {
                                setState(() {
                                  lastRew = image1;
                                });
                              }
                            },
                            child: DottedBorder(
                              dashPattern: [10, 10],
                              color: Colors.black,
                              strokeWidth: 1,
                              child: Center(
                                  child: lastRew != null
                                      ? Image.file(
                                          lastRew!,
                                          fit: BoxFit.contain,
                                        )
                                      : Icon(Icons.file_upload_outlined)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'BillBook Tax last\n renewal date Page',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CusButton(
                          text: 'Back',
                          Colors: Colors.grey,
                          ontap: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CusButton(
                          text: 'Finish',
                          Colors: Colors.blue,
                          ontap: () {
                            if (form.currentState!.validate()) {
                              form.currentState?.save();
                              widget.userDetails = widget.userDetails.copyWith(
                                  nidType: active == 1 ? 'CitizenShip' : 'Pan',
                                  nidNo: active == 1 ? CitizenNo : panNo,
                                  nidFront: active == 1
                                      ? cFrontimage?.path
                                      : panFront?.path,
                                  nidBack:
                                      active == 1 ? image?.path : panback?.path,
                                  billBookMainPage: billimage?.path,
                                  billBookRenewalPage: renewImage?.path,
                                  billBookTaxRenewedDatePage: lastRew?.path);
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return ConfirmationPage(
                                      vehicledatails: widget.userDetails);
                                },
                              ));
                            }
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
