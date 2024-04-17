import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String nome;
  final String cpf;
  final String email;
  final String telefone;

  final double receita;
  final double saldo;
  final double despesas;
  final double investimentos;
  final DateTime data;
  final List<String> status;

  final int ativo;

  const UserEntity(
      {required this.id,
      required this.nome,
      required this.cpf,
      required this.email,
      required this.telefone,
      required this.receita,
      required this.saldo,
      required this.despesas,
      required this.investimentos,
      required this.data,
      required this.status,
      required this.ativo});

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
        id: json['id'],
        nome: json['nome'],
        cpf: json['cpf'],
        email: json['email'],
        telefone: json['telefone'],
        receita: json['receita'],
        saldo: json['saldo'],
        despesas: json['despesa'],
        investimentos: json['investimentos'],
        data: json['data'],
        status: json['status'],
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
      'telefone': telefone,
      'saldo': saldo,
      'despesa': despesas,
      'investimentos': investimentos,
      'data': data,
      'status': status,
      'ativo': ativo
    };
  }

  //@override
  //bool get stringify => true;
}
