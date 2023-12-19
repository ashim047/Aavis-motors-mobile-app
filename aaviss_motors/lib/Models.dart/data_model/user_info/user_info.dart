// import 'package:equatable/equatable.dart';

// import 'vehicle.dart';

// class UserInfo extends Equatable {
//   final Users? vehicle;
//   final String? imageBaseUrl;

//   const UserInfo({this.vehicle, this.imageBaseUrl});

//   factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
//         vehicle: json['vehicle'] == null
//             ? null
//             : Users.fromJson(json['vehicle'] as Map<String, dynamic>),
//         imageBaseUrl: json['image_base_url'] as String?,
//       );

//   Map<String, dynamic> toJson() => {
//         'vehicle': vehicle?.toJson(),
//         'image_base_url': imageBaseUrl,
//       };

//   UserInfo copyWith({
//     Users? vehicle,
//     String? imageBaseUrl,
//   }) {
//     return UserInfo(
//       vehicle: vehicle ?? this.vehicle,
//       imageBaseUrl: imageBaseUrl ?? this.imageBaseUrl,
//     );
//   }

//   @override
//   List<Object?> get props => [vehicle, imageBaseUrl];
// }
