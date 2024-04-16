import 'package:financa/domain/entity/bank_entity.dart';
import 'package:financa/external/datasources/data_const.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class BankDatasource {
  Future<Database> getDatabase() async {
    return openDatabase(join(await getDatabasesPath(), database_name),
        onCreate: (db, version) async {
      await db.execute(CREATE_TABLE_BANK);
    }, version: DATABASE_VERSION);
  }

  //inserir banco
  Future<void> insertBank(BankEntity bank) async {
    final Database db = await getDatabase();
    await db.insert(bank_table, bank.toMap());
  }

  //select banco
  Future<List<BankEntity>> getBanks() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> maps = await db.query(bank_table);
    return List.generate(maps.length, (index) {
      return BankEntity(
          id: maps[index]['id'], nomeBank: maps[index]['nomeBank']);
    });
  }

  //update bank
  Future<void> updateBank(BankEntity bank) async {
    final Database db = await getDatabase();
    await db.update(bank_table, bank.toMap(),
        where: 'id = ?', whereArgs: [bank.id]);
  }

  //delete bank
  Future<void> deleteBank(int id) async {
    final Database db = await getDatabase();
    await db.delete(bank_table, where: 'id = ?', whereArgs: [id]);
  }
}
