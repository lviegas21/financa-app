import 'package:financa/domain/entity/bank_entity.dart';
import 'package:financa/external/datasources/bank_datasource.dart';

class BankRepository {
  final BankDatasource _bankDatasource;

  BankRepository(this._bankDatasource);

  //// Funções CRUD que delegam para o BankDatasource

  Future<void> insertBanks(BankEntity bankEntity) async {
    await _bankDatasource.insertBank(bankEntity);
  }

  Future<List<BankEntity>> getBanks() async {
    return await _bankDatasource.getBanks();
  }

  Future<void> updateBank(BankEntity bankEntity) async {
    await _bankDatasource.updateBank(bankEntity);
  }

  Future<void> deleteBank(int id) async {
    await _bankDatasource.deleteBank(id);
  }
}
