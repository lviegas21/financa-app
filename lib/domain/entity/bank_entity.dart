import 'package:equatable/equatable.dart';

class BankEntity extends Equatable {
  final int id;
  final String nomeBank;

  const BankEntity({required this.id, required this.nomeBank});

  factory BankEntity.fromMap(Map<String, dynamic> map) {
    return BankEntity(id: map['id'], nomeBank: map['nomeBank']);
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'nomeBank': nomeBank};
  }

  @override
  List<Object?> get props => [id, nomeBank];

  //@override
  //bool get stringify => true;
}
