// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryPrice> _$categoryPriceSerializer =
    new _$CategoryPriceSerializer();
Serializer<CategoryList> _$categoryListSerializer =
    new _$CategoryListSerializer();
Serializer<Categories> _$categoriesSerializer = new _$CategoriesSerializer();

class _$CategoryPriceSerializer implements StructuredSerializer<CategoryPrice> {
  @override
  final Iterable<Type> types = const [CategoryPrice, _$CategoryPrice];
  @override
  final String wireName = 'CategoryPrice';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoryPrice object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.guid;
    if (value != null) {
      result
        ..add('guid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.days;
    if (value != null) {
      result
        ..add('days')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CategoryPrice deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryPriceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'guid':
          result.guid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'days':
          result.days = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryListSerializer implements StructuredSerializer<CategoryList> {
  @override
  final Iterable<Type> types = const [CategoryList, _$CategoryList];
  @override
  final String wireName = 'CategoryList';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoryList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.guid;
    if (value != null) {
      result
        ..add('guid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.types;
    if (value != null) {
      result
        ..add('types')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CategoryPrice)])));
    }
    return result;
  }

  @override
  CategoryList deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'guid':
          result.guid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'types':
          result.types.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoryPrice)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CategoriesSerializer implements StructuredSerializer<Categories> {
  @override
  final Iterable<Type> types = const [Categories, _$Categories];
  @override
  final String wireName = 'Categories';

  @override
  Iterable<Object?> serialize(Serializers serializers, Categories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CategoryList)])));
    }
    return result;
  }

  @override
  Categories deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'results':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoryList)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryPrice extends CategoryPrice {
  @override
  final String? guid;
  @override
  final String? price;
  @override
  final int? days;

  factory _$CategoryPrice([void Function(CategoryPriceBuilder)? updates]) =>
      (new CategoryPriceBuilder()..update(updates)).build();

  _$CategoryPrice._({this.guid, this.price, this.days}) : super._();

  @override
  CategoryPrice rebuild(void Function(CategoryPriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryPriceBuilder toBuilder() => new CategoryPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryPrice &&
        guid == other.guid &&
        price == other.price &&
        days == other.days;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, guid.hashCode), price.hashCode), days.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryPrice')
          ..add('guid', guid)
          ..add('price', price)
          ..add('days', days))
        .toString();
  }
}

class CategoryPriceBuilder
    implements Builder<CategoryPrice, CategoryPriceBuilder> {
  _$CategoryPrice? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  CategoryPriceBuilder();

  CategoryPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _price = $v.price;
      _days = $v.days;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryPrice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryPrice;
  }

  @override
  void update(void Function(CategoryPriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryPrice build() {
    final _$result =
        _$v ?? new _$CategoryPrice._(guid: guid, price: price, days: days);
    replace(_$result);
    return _$result;
  }
}

class _$CategoryList extends CategoryList {
  @override
  final String? guid;
  @override
  final String? thumbnail;
  @override
  final String? title;
  @override
  final BuiltList<CategoryPrice>? types;

  factory _$CategoryList([void Function(CategoryListBuilder)? updates]) =>
      (new CategoryListBuilder()..update(updates)).build();

  _$CategoryList._({this.guid, this.thumbnail, this.title, this.types})
      : super._();

  @override
  CategoryList rebuild(void Function(CategoryListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryListBuilder toBuilder() => new CategoryListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryList &&
        guid == other.guid &&
        thumbnail == other.thumbnail &&
        title == other.title &&
        types == other.types;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, guid.hashCode), thumbnail.hashCode), title.hashCode),
        types.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryList')
          ..add('guid', guid)
          ..add('thumbnail', thumbnail)
          ..add('title', title)
          ..add('types', types))
        .toString();
  }
}

class CategoryListBuilder
    implements Builder<CategoryList, CategoryListBuilder> {
  _$CategoryList? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<CategoryPrice>? _types;
  ListBuilder<CategoryPrice> get types =>
      _$this._types ??= new ListBuilder<CategoryPrice>();
  set types(ListBuilder<CategoryPrice>? types) => _$this._types = types;

  CategoryListBuilder();

  CategoryListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _thumbnail = $v.thumbnail;
      _title = $v.title;
      _types = $v.types?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryList;
  }

  @override
  void update(void Function(CategoryListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryList build() {
    _$CategoryList _$result;
    try {
      _$result = _$v ??
          new _$CategoryList._(
              guid: guid,
              thumbnail: thumbnail,
              title: title,
              types: _types?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'types';
        _types?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoryList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Categories extends Categories {
  @override
  final int? count;
  @override
  final int? next;
  @override
  final int? previous;
  @override
  final BuiltList<CategoryList>? categories;

  factory _$Categories([void Function(CategoriesBuilder)? updates]) =>
      (new CategoriesBuilder()..update(updates)).build();

  _$Categories._({this.count, this.next, this.previous, this.categories})
      : super._();

  @override
  Categories rebuild(void Function(CategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesBuilder toBuilder() => new CategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Categories &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Categories')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('categories', categories))
        .toString();
  }
}

class CategoriesBuilder implements Builder<Categories, CategoriesBuilder> {
  _$Categories? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _next;
  int? get next => _$this._next;
  set next(int? next) => _$this._next = next;

  int? _previous;
  int? get previous => _$this._previous;
  set previous(int? previous) => _$this._previous = previous;

  ListBuilder<CategoryList>? _categories;
  ListBuilder<CategoryList> get categories =>
      _$this._categories ??= new ListBuilder<CategoryList>();
  set categories(ListBuilder<CategoryList>? categories) =>
      _$this._categories = categories;

  CategoriesBuilder();

  CategoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _categories = $v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Categories;
  }

  @override
  void update(void Function(CategoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Categories build() {
    _$Categories _$result;
    try {
      _$result = _$v ??
          new _$Categories._(
              count: count,
              next: next,
              previous: previous,
              categories: _categories?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Categories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
