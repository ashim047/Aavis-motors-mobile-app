import 'dart:io';

import 'package:aaviss_motors/Features/Presentation/final_sub.dart';
import 'package:aaviss_motors/Features/Presentation/widgets/cus_appbar.dart';
import 'package:aaviss_motors/Features/Presentation/widgets/cus_radiobutton.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../Models.dart/data_model/user_info/user_data.dart';
import 'widgets/Custombutton.dart';
import 'widgets/inputField.dart';

class ConfirmationPage extends StatefulWidget {
  final name;

  final Users vehicledatails;
  const ConfirmationPage({
    Key? key,
    this.name,
    required this.vehicledatails,
  }) : super(key: key);

  @override
  State<ConfirmationPage> createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  void initState() {
    super.initState();
    print(widget.vehicledatails.brandId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CusAppBar(),
                  Text(
                    'Confirmation',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Confirm All the data before submitting',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.5)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Personnel data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InputField(
                    initial: 'Name : ${widget.vehicledatails.fullName}',
                    HintText: '',
                    readonly: true,
                  ),
                  InputField(
                      initial: 'Address : ${widget.vehicledatails.address}',
                      HintText: '',
                      readonly: true),
                  InputField(
                      initial:
                          'Phone No : ${widget.vehicledatails.phoneNo ?? ''} ',
                      HintText: '',
                      readonly: true),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Vehicle Information',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InputField(
                      initial:
                          'Brand Name : ${widget.vehicledatails.brandName ?? ''} ',
                      HintText: '',
                      readonly: true),
                  InputField(
                      initial:
                          'Vehicle Name : ${widget.vehicledatails.vehicleIdName ?? ''}',
                      HintText: '',
                      readonly: true),
                  InputField(
                      initial:
                          'Engine No : ${widget.vehicledatails.engineNo ?? ''}',
                      HintText: '',
                      readonly: true),
                  InputField(
                      initial:
                          'Manufacture Year : ${widget.vehicledatails.manufactureYear ?? ''}',
                      HintText: '',
                      readonly: true),
                  InputField(
                      initial: 'Color : ${widget.vehicledatails.color ?? ''}',
                      HintText: '',
                      readonly: true),
                  InputField(
                      initial:
                          'No of Seats : ${widget.vehicledatails.noOfSeats ?? ''} ',
                      HintText: '',
                      readonly: true),
                  InputField(
                      initial:
                          'Purchase Year : ${widget.vehicledatails.purchaseYear ?? ''}',
                      HintText: '',
                      readonly: true),
                  InputField(
                      initial:
                          'No of Transfer : ${widget.vehicledatails.noOfTransfer ?? ''} ',
                      HintText: '',
                      readonly: true),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Vehicle Type',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Text('Private'),
                          value: 1,
                          groupValue:
                              widget.vehicledatails.vehicleType == 'Private'
                                  ? 1
                                  : 2,
                          onChanged: (value) {
                            print(widget.vehicledatails.vehicleType);
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          contentPadding: EdgeInsets.all(0),
                          title: Text('Public'),
                          value: 2,
                          groupValue:
                              widget.vehicledatails.vehicleType == 'Public'
                                  ? 2
                                  : 1,
                          onChanged: (value) {},
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Number Plate',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InputField(
                    HintText: '',
                    readonly: true,
                    initial: 'No : ${widget.vehicledatails.vehicleNo}',
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
                      CusRadioButton(
                          widget.vehicledatails.nidType == 'CitizenShip'
                              ? 1
                              : 2,
                          (value) {},
                          1,
                          Text('Citizenship')),
                      CusRadioButton(
                          widget.vehicledatails.nidType == 'Pan' ? 2 : 1,
                          (value) {},
                          2,
                          Text('Pan')),
                    ],
                  ),
                  InputField(
                      initial: '${widget.vehicledatails.nidNo ?? ''} ',
                      HintText: '',
                      readonly: true),
                  SizedBox(
                    height: 15,
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
                              child: DottedBorder(
                                  dashPattern: [10, 10],
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  child: Center(
                                    child: Image.file(
                                        File(widget.vehicledatails.nidFront!)),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('CitizenShip/Pan \n Front Page')
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: GestureDetector(
                              child: DottedBorder(
                                  dashPattern: [10, 10],
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  child: Center(
                                    child: Image.file(
                                        File(widget.vehicledatails.nidBack!)),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('CitizenShip/Pan \n Back Page')
                        ],
                      ),
                    ],
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
                              child: DottedBorder(
                                  dashPattern: [10, 10],
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  child: Center(
                                    child: Image.file(File(widget
                                        .vehicledatails.billBookMainPage!)),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Bill Front Page')
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: GestureDetector(
                              child: DottedBorder(
                                  dashPattern: [10, 10],
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  child: Center(
                                    child: Image.file(File(widget
                                        .vehicledatails.billBookRenewalPage!)),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Bill Back Page')
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: GestureDetector(
                          child: DottedBorder(
                              dashPattern: [10, 10],
                              color: Colors.black,
                              strokeWidth: 1,
                              child: Center(
                                child: Image.file(File(widget.vehicledatails
                                    .billBookTaxRenewedDatePage!)),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('BillBook Tax last\n renewal date Page')
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
                        text: 'Submit',
                        Colors: Colors.blue,
                        ontap: () {
                          Submission();
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
    );
  }
}
