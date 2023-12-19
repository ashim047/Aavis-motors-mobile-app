import 'package:aaviss_motors/Features/Presentation/personnel_data.dart';

import 'package:flutter/material.dart';

import '../../Models.dart/data_model/user_info/user_data.dart';
import 'widgets/Custombutton.dart';

class Submission extends StatelessWidget {
  const Submission({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Users userDetails = Users();
    return Container(
      child: Column(
        children: [
          Icon(
            size: 100,
            Icons.check_circle,
            color: Colors.green,
          ),
          Text(
              textAlign: TextAlign.center,
              'Thank you very much for\n your inquiry. You will receive\n your valuation in 3 working days.\n If you want to receive \n your valuation within 24 hours,\n please pay RS.100 at \n esewa account 9800000000'),
          CusButton(
            text: 'Go Home',
            Colors: Colors.blue,
            ontap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return PersonalData(
                    userDetails: userDetails,
                  );
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
