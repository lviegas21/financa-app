import 'package:equatable/equatable.dart';

class PessoaEntity extends Equatable {
  final int id;
  final String nome;
  final String cpf;
  final String email;
  final String telefone;

  const PessoaEntity(
      {required this.id,
      required this.nome,
      required this.cpf,
      required this.email,
      required this.telefone});

  factory PessoaEntity.fromJson(Map<String, dynamic> json) {
    return PessoaEntity(
        id: json['id'],
        nome: json['nome'],
        cpf: json['cpf'],
        email: json['email'],
        telefone: json['telefone']);
  }

  @override
  List<Object?> get props => [id, nome, cpf, email, telefone];

  //@override
  //bool get stringify => true;
}
