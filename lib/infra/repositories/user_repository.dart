import 'package:financa/domain/entity/user_entity.dart';

import '../../external/datasources/user_datasource.dart';

class UserRepository {
  final UserDatasource _userDatasource;

  UserRepository(this._userDatasource);

  // Funções CRUD que delegam para o UserDatasource
  Future<void> insertUser(UserEntity userEntity) async {
    await _userDatasource.insertUser(userEntity);
  }

  Future<List<UserEntity>> getUsers() async {
    return await _userDatasource.getUsers();
  }

  Future<void> updateUser(UserEntity userEntity) async {
    await _userDatasource.updateUser(userEntity);
  }

  Future<void> deleteUser(int id) async {
    await _userDatasource.deleteUser(id);
  }
}
