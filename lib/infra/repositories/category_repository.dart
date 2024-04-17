import 'package:financa/domain/entity/category_entity.dart';
import 'package:financa/external/datasources/category_datasource.dart';

class CategoryRepository {
  final CategoryDatasource _categoryDatasource;

  CategoryRepository(this._categoryDatasource);

  Future<void> insertCategory(CategoryEntity categoryEntity) async {
    await _categoryDatasource.insertCategory(categoryEntity);
  }

  Future<List<CategoryEntity>> getCategory() async {
    return await _categoryDatasource.getCategory();
  }

  Future<void> updateCategory(CategoryEntity categoryEntity) async {
    await _categoryDatasource.updateCategory(categoryEntity);
  }

  Future<void> deleteCategory(int id) async {
    await _categoryDatasource.deleteCategory(id);
  }
}
