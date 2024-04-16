import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String nome;
  final String cpf;
  final String email;
  final String telefone;
  final int ativo;

  const UserEntity(
      {required this.id,
      required this.nome,
      required this.cpf,
      required this.email,
      required this.telefone,
      required this.ativo});

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
        id: json['id'],
        nome: json['nome'],
        cpf: json['cpf'],
        email: json['email'],
        telefone: json['telefone'],
        ativo: json['ativo']);
  }

  @override
  List<Object?> get props => [id, nome, cpf, email, telefone];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'cpf': cpf,
      'email': email,
      'telefone': telefone
    };
  }

  //@override
  //bool get stringify => true;
}
