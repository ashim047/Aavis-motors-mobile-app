import 'package:aaviss_motors/Features/Presentation/personnel_data.dart';
import 'package:aaviss_motors/Features/Presentation/widgets/Custombutton.dart';
import 'package:aaviss_motors/Features/Presentation/widgets/inputField.dart';

import 'package:flutter/material.dart';

import '../../Models.dart/data_model/user_info/user_data.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Users userDetails = Users();
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Aaviss Motors'),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.manage_search_outlined))
                  ],
                ),
                Text('Search Your Detail'),
                InputField(
                    HintText: 'Enter your vehicle Number', readonly: false),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CusButton(
                      text: 'Search',
                      Colors: Colors.blue,
                      ontap: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: CusButton(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
