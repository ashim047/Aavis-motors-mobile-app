import 'package:equatable/equatable.dart';

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

	VehicleName copyWith({
		int? id,
		int? brandId,
		String? vehicleName,
		DateTime? createdAt,
		DateTime? updatedAt,
	}) {
		return VehicleName(
			id: id ?? this.id,
			brandId: brandId ?? this.brandId,
			vehicleName: vehicleName ?? this.vehicleName,
			createdAt: createdAt ?? this.createdAt,
			updatedAt: updatedAt ?? this.updatedAt,
		);
	}

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
