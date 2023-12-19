import 'package:equatable/equatable.dart';

import 'brand.dart';
import 'vehicle_name.dart';

class Users extends Equatable {
  final int? id;
  final String? brandName;
  final String? vehicleIdName;
  final String? plateNotype;
  final String? fullName;
  final String? address;
  final int? phoneNo;
  final int? brandId;
  final int? vehicleNameId;
  final String? engineNo;
  final String? manufactureYear;
  final String? color;
  final int? noOfSeats;
  final String? purchaseYear;
  final int? noOfTransfer;
  final String? vehicleType;
  final String? vehicleNo;
  final String? nidType;
  final String? nidNo;
  final String? nidFront;
  final String? nidBack;
  final String? billBookMainPage;
  final String? billBookRenewalPage;
  final String? billBookTaxRenewedDatePage;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Brand? brand;
  final int? brandid;
  final int? vehicleid;
  final VehicleName? vehicleName;

  const Users({
    this.plateNotype,
    this.vehicleIdName,
    this.brandName,
    this.brandid,
    this.vehicleid,
    this.id,
    this.fullName,
    this.address,
    this.phoneNo,
    this.brandId,
    this.vehicleNameId,
    this.engineNo,
    this.manufactureYear,
    this.color,
    this.noOfSeats,
    this.purchaseYear,
    this.noOfTransfer,
    this.vehicleType,
    this.vehicleNo,
    this.nidType,
    this.nidNo,
    this.nidFront,
    this.nidBack,
    this.billBookMainPage,
    this.billBookRenewalPage,
    this.billBookTaxRenewedDatePage,
    this.createdAt,
    this.updatedAt,
    this.brand,
    this.vehicleName,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json['id'] as int?,
        fullName: json['full_name'] as String?,
        address: json['address'] as String?,
        phoneNo: json['phone_no'] as int?,
        brandId: json['brand_id'] as int?,
        vehicleNameId: json['vehicle_name_id'] as int?,
        engineNo: json['engine_no'] as String?,
        manufactureYear: json['manufacture_year'] as String?,
        color: json['color'] as String?,
        noOfSeats: json['no_of_seats'] as int?,
        purchaseYear: json['purchase_year'] as String?,
        noOfTransfer: json['no_of_transfer'] as int?,
        vehicleType: json['vehicle_type'] as String?,
        vehicleNo: json['vehicle_no'] as String?,
        nidType: json['nid_type'] as String?,
        nidNo: json['nid_no'] as String?,
        nidFront: json['nid_front'] as String?,
        nidBack: json['nid_back'] as String?,
        billBookMainPage: json['bill_book_main_page'] as String?,
        billBookRenewalPage: json['bill_book_renewal_page'] as String?,
        billBookTaxRenewedDatePage:
            json['bill_book_tax_renewed_date_page'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        brand: json['brand'] == null
            ? null
            : Brand.fromJson(json['brand'] as Map<String, dynamic>),
        vehicleName: json['vehicle_name'] == null
            ? null
            : VehicleName.fromJson(
                json['vehicle_name'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'full_name': fullName,
        'address': address,
        'phone_no': phoneNo,
        'brand_id': brandId,
        'vehicle_name_id': vehicleNameId,
        'engine_no': engineNo,
        'manufacture_year': manufactureYear,
        'color': color,
        'no_of_seats': noOfSeats,
        'purchase_year': purchaseYear,
        'no_of_transfer': noOfTransfer,
        'vehicle_type': vehicleType,
        'vehicle_no': vehicleNo,
        'nid_type': nidType,
        'nid_no': nidNo,
        'nid_front': nidFront,
        'nid_back': nidBack,
        'bill_book_main_page': billBookMainPage,
        'bill_book_renewal_page': billBookRenewalPage,
        'bill_book_tax_renewed_date_page': billBookTaxRenewedDatePage,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'brand': brand?.toJson(),
        'vehicle_name': vehicleName?.toJson(),
      };

  Users copyWith(
      {int? id,
      String? fullName,
      String? brandName,
      String? address,
      int? phoneNo,
      int? brandId,
      int? vehicleNameId,
      String? engineNo,
      String? manufactureYear,
      String? color,
      int? noOfSeats,
      String? purchaseYear,
      int? noOfTransfer,
      String? vehicleType,
      String? vehicleNo,
      String? nidType,
      String? nidNo,
      String? nidFront,
      String? nidBack,
      String? billBookMainPage,
      String? billBookRenewalPage,
      String? billBookTaxRenewedDatePage,
      DateTime? createdAt,
      DateTime? updatedAt,
      Brand? brand,
      String? plateNoType,
      VehicleName? vehicleName,
      String? vehicleIdName}) {
    return Users(
      id: id ?? this.id,
      brandName: brandName ?? this.brandName,
      vehicleIdName: vehicleIdName ?? this.vehicleIdName,
      plateNotype: plateNotype ?? plateNoType,
      fullName: fullName ?? this.fullName,
      address: address ?? this.address,
      phoneNo: phoneNo ?? this.phoneNo,
      brandId: brandId ?? this.brandId,
      vehicleNameId: vehicleNameId ?? this.vehicleNameId,
      engineNo: engineNo ?? this.engineNo,
      manufactureYear: manufactureYear ?? this.manufactureYear,
      color: color ?? this.color,
      noOfSeats: noOfSeats ?? this.noOfSeats,
      purchaseYear: purchaseYear ?? this.purchaseYear,
      noOfTransfer: noOfTransfer ?? this.noOfTransfer,
      vehicleType: vehicleType ?? this.vehicleType,
      vehicleNo: vehicleNo ?? this.vehicleNo,
      nidType: nidType ?? this.nidType,
      nidNo: nidNo ?? this.nidNo,
      nidFront: nidFront ?? this.nidFront,
      nidBack: nidBack ?? this.nidBack,
      billBookMainPage: billBookMainPage ?? this.billBookMainPage,
      billBookRenewalPage: billBookRenewalPage ?? this.billBookRenewalPage,
      billBookTaxRenewedDatePage:
          billBookTaxRenewedDatePage ?? this.billBookTaxRenewedDatePage,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      brand: brand ?? this.brand,
      vehicleName: vehicleName ?? this.vehicleName,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      fullName,
      address,
      phoneNo,
      brandId,
      vehicleNameId,
      engineNo,
      manufactureYear,
      color,
      noOfSeats,
      purchaseYear,
      noOfTransfer,
      vehicleType,
      vehicleNo,
      nidType,
      nidNo,
      nidFront,
      nidBack,
      billBookMainPage,
      billBookRenewalPage,
      billBookTaxRenewedDatePage,
      createdAt,
      updatedAt,
      brand,
      vehicleName,
    ];
  }
}
