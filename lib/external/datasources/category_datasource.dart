import 'package:financa/domain/entity/category_entity.dart';
import 'package:financa/external/datasources/data_const.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class CategoryDatasource {
  Future<Database> getDatabase() async {
    return openDatabase(join(await getDatabasesPath(), database_name),
        onCreate: (db, version) async {
      await db.execute(CREATE_TABLE_CATEGORY);
    }, version: DATABASE_VERSION);
  }

  //insert category
  Future<void> insertCategory(CategoryEntity category) async {
    final Database db = await getDatabase();
    await db.insert(category_table, category.toMap());
  }

  //select category
  Future<List<CategoryEntity>> getCategory() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> maps = await db.query(category_table);
    return List.generate(maps.length, (index) {
      return CategoryEntity(
          id: maps[index]['id'], category: maps[index]['category']);
    });
  }

  //update category
  Future<void> updateCategory(CategoryEntity category) async {
    final Database db = await getDatabase();
    await db.update(category_table, category.toMap(),
        where: 'id = ?', whereArgs: [category.id]);
  }

  //delete category
  Future<void> deleteCategory(int id) async {
    final Database db = await getDatabase();
    await db.delete(category_table, where: 'id = ?', whereArgs: [id]);
  }
}
