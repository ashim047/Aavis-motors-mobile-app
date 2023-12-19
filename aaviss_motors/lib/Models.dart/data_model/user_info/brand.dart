import 'package:equatable/equatable.dart';

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

	Brand copyWith({
		int? id,
		String? name,
		DateTime? createdAt,
		DateTime? updatedAt,
	}) {
		return Brand(
			id: id ?? this.id,
			name: name ?? this.name,
			createdAt: createdAt ?? this.createdAt,
			updatedAt: updatedAt ?? this.updatedAt,
		);
	}

	@override
	List<Object?> get props => [id, name, createdAt, updatedAt];
}
