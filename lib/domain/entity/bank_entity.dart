import 'package:equatable/equatable.dart';

class BankEntity extends Equatable {
  final List<String> banks;

  const BankEntity({required this.banks});

  factory BankEntity.fromMap(Map<String, dynamic> map) {
    return BankEntity(banks: List<String>.from(map['banks'] ?? []));
  }

  @override
  List<Object?> get props => [banks];

  //@override
  //bool get stringify => true;
}

const bankbanksdefined = BankEntity(banks: [
  'Caixa',
  'Nubank',
  'Santander',
  'Bradesco',
  'Inter',
]);

final banksaupdated =
    BankEntity(banks: [...bankbanksdefined.banks, 'New Bank']);
