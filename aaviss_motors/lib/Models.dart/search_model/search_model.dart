import 'package:equatable/equatable.dart';

class SearchModel extends Equatable {
  final Vehicle? vehicle;
  final String? imageBaseUrl;

  const SearchModel({this.vehicle, this.imageBaseUrl});

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        vehicle: json['vehicle'] == null
            ? null
            : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
        imageBaseUrl: json['image_base_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'vehicle': vehicle?.toJson(),
        'image_base_url': imageBaseUrl,
      };

  @override
  List<Object?> get props => [vehicle, imageBaseUrl];
}

class Vehicle extends Equatable {
  final int? id;
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
  final VehicleName? vehicleName;

  const Vehicle({
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

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
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

class VehicleName extends Equatable {
  final int? id;
  final int? brandId;
  final String? vehicleName;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const VehicleName({
    this.id,
    this.brandId,
    this.vehicleName,
    this.createdAt,
    this.updatedAt,
  });

  factory VehicleName.fromJson(Map<String, dynamic> json) => VehicleName(
        id: json['id'] as int?,
        brandId: json['brand_id'] as int?,
        vehicleName: json['vehicle_name'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'brand_id': brandId,
        'vehicle_name': vehicleName,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      brandId,
      vehicleName,
      createdAt,
      updatedAt,
    ];
  }
}

class Brand extends Equatable {
  final int? id;
  final String? name;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Brand({this.id, this.name, this.createdAt, this.updatedAt});

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json['id'] as int?,
        name: json['name'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  @override
  List<Object?> get props => [id, name, createdAt, updatedAt];
}
