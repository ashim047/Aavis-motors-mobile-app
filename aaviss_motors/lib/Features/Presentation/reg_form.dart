// import 'package:aaviss_motors/Features/Presentation/personnel_data.dart';
// import 'package:aaviss_motors/Features/Presentation/search_page.dart';
// import 'package:aaviss_motors/Features/Presentation/vechicle.dart';
// import 'package:aaviss_motors/Features/Presentation/widgets/cus_appbar.dart';
// import 'package:flutter/material.dart';

// import '../../Models.dart/data_model/user_info/vehicle.dart';
// import 'citizen_pan.dart';
// import 'confirmation_page.dart';
// import 'final_sub.dart';

// class RegForm extends StatefulWidget {
//   const RegForm({super.key});

//   @override
//   State<RegForm> createState() => _RegFormState();
// }

// class _RegFormState extends State<RegForm> {
//   int pageIndex = 0;
//   PageController viewController = PageController(initialPage: 0);
//   int index = 0;
//   var nameController = TextEditingController();
//   Users userDetails = Users();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GestureDetector(
//         onPanDown: (_) {
//           FocusScope.of(context).requestFocus(FocusNode());
//         },
//         onTap: () => FocusScope.of(context).unfocus(),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 CusAppBar(),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   'Resize Value Calculator',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w700,
//                       fontSize: 24,
//                       color: Colors.black.withOpacity(0.75)),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   textAlign: TextAlign.left,
//                   'Fill the form below to know resale\n value of your vehicle',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 14,
//                       color: Colors.black.withOpacity(0.5)),
//                 ),
//                 Expanded(
//                   child: PageView(
//                     physics: NeverScrollableScrollPhysics(),
//                     controller: viewController,
//                     onPageChanged: (
//                       int index,
//                     ) {
//                       setState(() {
//                         pageIndex = index;
//                         WidgetsBinding.instance.focusManager.primaryFocus
//                             ?.unfocus();
//                       });
//                     },
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       PersonalData(
//                         userDetails: userDetails,
//                       ),
//                       VehicleInformation(
//                         userdetails: userDetails,
//                       ),
//                       LegalInformation(
//                         userDetails: userDetails,
//                       ),
//                       ConfirmationPage(
//                         vehicledatails: userDetails,
//                       ),
//                       Submission()
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
