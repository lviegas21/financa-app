import 'package:financa/domain/entity/user_entity.dart';
import 'package:financa/external/datasources/data_const.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UserDatasource {
  Future<Database> getDatabase() async {
    return openDatabase(join(await getDatabasesPath(), database_name),
        onCreate: (db, version) async {
      await db.execute(CREATE_TABLE_USER);
    }, version: DATABASE_VERSION);
  }

  //inserir user
  Future<void> insertUser(UserEntity user) async {
    final Database db = await getDatabase();
    await db.insert(user_table, user.toMap());
  }

  //select user
  Future<List<UserEntity>> getUsers() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> maps = await db.query(user_table);
    return List.generate(maps.length, (index) {
      return UserEntity(
          id: maps[index]['id'],
          nome: maps[index]['nome'],
          cpf: maps[index]['cpf'],
          email: maps[index]['email'],
          telefone: maps[index]['telefone'],
          ativo: maps[index]['ativo']);
    });
  }

  //update user
  Future<void> updateUser(UserEntity user) async {
    final Database db = await getDatabase();
    await db.update(user_table, user.toMap(),
        where: 'id = ?', whereArgs: [user.id]);
  }

  //delete user
  Future<void> deleteUser(int id) async {
    final Database db = await getDatabase();
    await db.delete(user_table, where: 'id = ?', whereArgs: [id]);
  }
}
