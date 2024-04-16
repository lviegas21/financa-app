import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int id;
  final String category;

  const CategoryEntity({required this.id, required this.category});

  factory CategoryEntity.fromJson(Map<String, dynamic> json) {
    return CategoryEntity(id: json['id'], category: json['category']);
  }

  @override
  List<Object?> get props => [category];

  Map<String, dynamic> toMap() {
    return {'id': id, 'category': category};
  }

  //@override
  //bool get stringify => true;
}
