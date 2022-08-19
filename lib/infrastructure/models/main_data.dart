import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'main_data.g.dart';

abstract class CategoryPrice
    implements Built<CategoryPrice, CategoryPriceBuilder> {
  String? get guid;

  String? get price;

  int? get days;

  CategoryPrice._();
  factory CategoryPrice([Function(CategoryPriceBuilder b) updates]) =
      _$CategoryPrice;

  static Serializer<CategoryPrice> get serializer => _$categoryPriceSerializer;
}

abstract class CategoryList
    implements Built<CategoryList, CategoryListBuilder> {
  String? get guid;

  String? get thumbnail;

  String? get title;

  BuiltList<CategoryPrice>? get types;

  CategoryList._();
  factory CategoryList([Function(CategoryListBuilder b) updates]) =
      _$CategoryList;

  static Serializer<CategoryList> get serializer => _$categoryListSerializer;
}

abstract class Categories implements Built<Categories, CategoriesBuilder> {
  int? get count;

  int? get next;

  int? get previous;

  @BuiltValueField(wireName: 'results')
  BuiltList<CategoryList>? get categories;

  Categories._();
  factory Categories([Function(CategoriesBuilder b) updates]) = _$Categories;

  static Serializer<Categories> get serializer => _$categoriesSerializer;
}
