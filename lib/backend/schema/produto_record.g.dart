// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdutoRecord> _$produtoRecordSerializer =
    new _$ProdutoRecordSerializer();

class _$ProdutoRecordSerializer implements StructuredSerializer<ProdutoRecord> {
  @override
  final Iterable<Type> types = const [ProdutoRecord, _$ProdutoRecord];
  @override
  final String wireName = 'ProdutoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProdutoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ProdutoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdutoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProdutoRecord extends ProdutoRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? category;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProdutoRecord([void Function(ProdutoRecordBuilder)? updates]) =>
      (new ProdutoRecordBuilder()..update(updates))._build();

  _$ProdutoRecord._(
      {this.name,
      this.description,
      this.price,
      this.image,
      this.category,
      this.ffRef})
      : super._();

  @override
  ProdutoRecord rebuild(void Function(ProdutoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdutoRecordBuilder toBuilder() => new ProdutoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdutoRecord &&
        name == other.name &&
        description == other.description &&
        price == other.price &&
        image == other.image &&
        category == other.category &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), description.hashCode),
                    price.hashCode),
                image.hashCode),
            category.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProdutoRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('price', price)
          ..add('image', image)
          ..add('category', category)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProdutoRecordBuilder
    implements Builder<ProdutoRecord, ProdutoRecordBuilder> {
  _$ProdutoRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _category;
  DocumentReference<Object?>? get category => _$this._category;
  set category(DocumentReference<Object?>? category) =>
      _$this._category = category;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProdutoRecordBuilder() {
    ProdutoRecord._initializeBuilder(this);
  }

  ProdutoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _price = $v.price;
      _image = $v.image;
      _category = $v.category;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdutoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdutoRecord;
  }

  @override
  void update(void Function(ProdutoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProdutoRecord build() => _build();

  _$ProdutoRecord _build() {
    final _$result = _$v ??
        new _$ProdutoRecord._(
            name: name,
            description: description,
            price: price,
            image: image,
            category: category,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
