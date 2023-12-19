import 'dart:developer';

import 'package:aaviss_motors/Features/Presentation/citizen_pan.dart';

import 'package:aaviss_motors/Features/Presentation/widgets/cus_appbar.dart';
import 'package:aaviss_motors/Models.dart/brands_model/brands_model.dart';
import 'package:aaviss_motors/Models.dart/vehicle_models/datum.dart';

import 'package:aaviss_motors/services/api_services.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Models.dart/data_model/user_info/user_data.dart';
import 'widgets/Custombutton.dart';
import 'widgets/cus_radiobutton.dart';
import 'widgets/inputField.dart';

class VehicleInformation extends StatefulWidget {
  Users userdetails;
  VehicleInformation({
    Key? key,
    required this.userdetails,
  }) : super(key: key);

  @override
  State<VehicleInformation> createState() => _VehicleInformationState();
}

class _VehicleInformationState extends State<VehicleInformation> {
  String showyear = 'Select year';
  DateTime selectedYear = DateTime.now();
  TextEditingController manufactureinput = TextEditingController();
  TextEditingController purchaseinput = TextEditingController();
  int? nooftransfers;
  int status = 1;
  int numbersts = 1;
  bool newform = true;
  final form = GlobalKey<FormState>();
  String? brandname;

  String? vehiclename;
  String? enginenumber;
  String? manuyear;
  String? purchaseyear;
  String? color;
  int? noofseat;
  String? noplate;
  String? province;
  String? province1;
  String? province2;
  String? province3;
  String? province4;
  String? province5;
  int? date;

  String? brandName;
  String? vehicleIdName;

  int? brandid;
  int? vehicleid;

  late Future<BrandsModel?> future;
  late Future<VehicleModels?> futureVehicle;
  // populateDropDowns() async {
  //   CarCollection data = await getData();
  //   print(data);
  //   setState(() {});
  // }

  @override
  void initState() {
    super.initState();
    future = getData();
    futureVehicle = getVehicle();
  }

  // Year Picker
  selectYear(context, TextEditingController controller) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Select Year'),
          content: SizedBox(
            height: 200,
            width: 300,
            child: YearPicker(
                firstDate: DateTime(DateTime.now().year - 100, 1),
                lastDate: DateTime.now(),
                selectedDate: selectedYear,
                initialDate: DateTime.now(),
                onChanged: (DateTime dateTime) {
                  // setState(() {
                  selectedYear = dateTime;
                  controller.text = '${dateTime.year}';
                  // });
                  Navigator.pop(context);
                }),
          ),
        );
      },
    );
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
                          radius: 10,
                          child: Text('2'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Vehicle Information')
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Vehicle Information',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    // FutureBuilder<CarCollection?>(
                    //     future: getData(),
                    //     builder: (context, snapshot) {
                    //       if (!snapshot.hasData) {
                    //         final data = snapshot.data.data.brands;
                    //         return DropdownButton(
                    //           hint: Text('Name of Brands'),
                    //           value: brandsList,
                    //           items: data.map((e) {
                    //             return DropdownMenuItem(
                    //                 value: e.id, child: Text(e.name));
                    //           }).toList(),
                    //           onChanged: (value) {
                    //             setState(() {
                    //               brands = value.toString();
                    //             });
                    //           },
                    //         );
                    //       }
                    //       return Text('El');
                    //     }),

                    FutureBuilder<BrandsModel?>(
                        future: future,
                        builder: (context, snapshot) {
                          if (snapshot.hasData &&
                              snapshot.connectionState ==
                                  ConnectionState.done) {
                            final data = snapshot.data?.data;
                            return SizedBox(
                              width: 340,
                              child: DropdownButton(
                                isExpanded: true,
                                hint: Text('Name of Brands'),
                                value: brandid,
                                items: data?.map((e) {
                                  return DropdownMenuItem(
                                      value: e.id,
                                      child: Text(
                                          textAlign: TextAlign.start,
                                          e.name ?? ''));
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    brandid = value;
                                    brandName = data
                                        ?.where(
                                            (element) => element.id == value)
                                        .first
                                        .name;
                                  });
                                },
                              ),
                            );
                          }
                          return InputField(
                              HintText: 'Name of Brands', readonly: true);
                        }),

                    FutureBuilder<VehicleModels?>(
                        future: futureVehicle,
                        builder: (context, snapshot) {
                          if (snapshot.hasData &&
                              snapshot.connectionState ==
                                  ConnectionState.done) {
                            final data = snapshot.data?.data;
                            return SizedBox(
                              width: 340,
                              child: DropdownButton(
                                isExpanded: true,
                                hint: Text('Name of Vehicle'),
                                value: vehicleid,
                                items: data?.map((e) {
                                  return DropdownMenuItem(
                                      value: e.id,
                                      child: Text(
                                          textAlign: TextAlign.start,
                                          e.vehicleName ?? ''));
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    vehicleid = value;
                                    vehicleIdName = data
                                        ?.where(
                                            (element) => element.id == value)
                                        .first
                                        .vehicleName;
                                  });
                                },
                              ),
                            );
                          }
                          return InputField(
                              HintText: 'Name of vehicle', readonly: true);
                        }),

                    InputField(
                      onSaved: (newValue) {
                        enginenumber = newValue;
                      },
                      HintText: 'Engine Number',
                      readonly: false,
                    ),
                    InputField(
                      onSaved: (newValue) {
                        manuyear = newValue;
                      },
                      TextController: manufactureinput,
                      HintText: 'Manufacture Year',
                      readonly: true,
                      icons: Icons.arrow_drop_down,
                      ontap: () {
                        selectYear(context, manufactureinput);
                      },
                    ),
                    InputField(
                      onSaved: (newValue) {
                        color = newValue;
                      },
                      HintText: 'Color',
                      readonly: false,
                    ),
                    InputField(
                      onSaved: (newValue) {
                        noofseat = int.tryParse(newValue);
                      },
                      HintText: 'No. of Seat',
                      readonly: false,
                      keyboardtype: TextInputType.number,
                      inputformatter: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                    InputField(
                      TextController: purchaseinput,
                      HintText: 'Purchase Year',
                      readonly: true,
                      icons: Icons.arrow_drop_down,
                      onSaved: (newValue) {
                        purchaseyear = newValue;
                      },
                      ontap: () {
                        selectYear(context, purchaseinput);
                      },
                    ),
                    InputField(
                      onSaved: (newValue) {
                        nooftransfers = int.tryParse(newValue);
                      },
                      HintText: 'No. of Transfers',
                      readonly: false,
                      keyboardtype: TextInputType.number,
                      inputformatter: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Vehicle Type'),
                    Row(
                      children: [
                        CusRadioButton(status, (value) {
                          setState(() {
                            status = int.parse(value.toString());
                          });
                        }, 1, Text('Private')),
                        CusRadioButton(status, (value) {
                          setState(() {
                            status = int.parse(value.toString());
                          });
                        }, 2, Text('Public'))
                      ],
                    ),
                    Text('Number Plate'),
                    Row(
                      children: [
                        CusRadioButton(numbersts, (value) {
                          setState(() {
                            numbersts = int.parse(value.toString());
                            newform = true;
                          });
                        }, 1, Text('Old')),
                        CusRadioButton(numbersts, (value) {
                          setState(() {
                            numbersts = int.parse(value.toString());
                            newform = false;
                          });
                        }, 2, Text('New'))
                      ],
                    ),
                    newform
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: 80,
                                  child: TextFormField(
                                    onSaved: (newValue) {
                                      province = newValue;
                                    },
                                  )),
                              SizedBox(
                                  width: 80,
                                  child: TextFormField(
                                    onSaved: (newValue) {
                                      province1 = newValue;
                                    },
                                  )),
                              SizedBox(
                                  width: 80,
                                  child: TextFormField(
                                    onSaved: (newValue) {
                                      province2 = newValue;
                                    },
                                  )),
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 80,
                                      child: TextFormField(
                                        onSaved: (newValue) {
                                          province = newValue;
                                        },
                                      )),
                                  SizedBox(
                                      width: 80,
                                      child: TextFormField(
                                        onSaved: (newValue) {
                                          province1 = newValue;
                                        },
                                      )),
                                  SizedBox(
                                      width: 80,
                                      child: TextFormField(
                                        onSaved: (newValue) {
                                          province2 = newValue;
                                        },
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 80,
                                      child: TextFormField(
                                        onSaved: (newValue) {
                                          province3 = newValue;
                                        },
                                      )),
                                  SizedBox(
                                      width: 80,
                                      child: TextFormField(
                                        onSaved: (newValue) {
                                          province4 = newValue;
                                        },
                                      )),
                                  SizedBox(
                                      width: 80,
                                      child: TextFormField(
                                        onSaved: (newValue) {
                                          province5 = newValue;
                                        },
                                      ))
                                ],
                              )
                            ],
                          ),

                    SizedBox(
                      height: 40,
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
                        Hero(
                          tag: 'Next',
                          child: CusButton(
                            text: 'Next',
                            Colors: Colors.blue,
                            ontap: () {
                              if (form.currentState!.validate()) {
                                form.currentState?.save();
                                widget.userdetails = widget.userdetails.copyWith(
                                    brandId: brandid,
                                    brandName: brandName,
                                    vehicleNameId: vehicleid,
                                    vehicleIdName: vehicleIdName,
                                    engineNo: enginenumber,
                                    color: color,
                                    noOfSeats: noofseat,
                                    noOfTransfer: nooftransfers,
                                    plateNoType: newform == 1 ? 'Old' : 'New',
                                    vehicleNo: numbersts == 1
                                        ? '$province-$province1-$province2'
                                        : '$province-$province1-$province2-$province3-$province4-$province5',
                                    vehicleType:
                                        status == 1 ? 'Private' : 'Public',
                                    manufactureYear: manuyear,
                                    purchaseYear: purchaseyear);
                                print('${widget.userdetails.plateNotype}');

                                print('$numbersts');
                                print(widget.userdetails);
                                print('$newform');
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return LegalInformation(
                                      userDetails: widget.userdetails,
                                    );
                                  },
                                ));
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
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
