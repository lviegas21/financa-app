import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final List<String> category;

  const CategoryEntity({required this.category});

  factory CategoryEntity.fromMap(Map<String, dynamic> map) {
    return CategoryEntity(category: List<String>.from(map['category'] ?? []));
  }

  @override
  List<Object?> get props => [category];

  //@override
  //bool get stringify => true;
}

const categoriasPreDefinidas = CategoryEntity(
  category: [
    'Alimentação',
    'Diversão',
    'Transporte',
    'Moradia',
    'Assinatura',
    'Saúde',
    'Beleza',
    'Outros'
  ],
);

final categoriasAtualizadas = CategoryEntity(
  category: [
    ...categoriasPreDefinidas.category,
    'Nova Categoria',
  ],
);
