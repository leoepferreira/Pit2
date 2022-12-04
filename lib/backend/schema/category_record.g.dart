// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryRecord> _$categoryRecordSerializer =
    new _$CategoryRecordSerializer();

class _$CategoryRecordSerializer
    implements StructuredSerializer<CategoryRecord> {
  @override
  final Iterable<Type> types = const [CategoryRecord, _$CategoryRecord];
  @override
  final String wireName = 'CategoryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CategoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CategoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CategoryRecord extends CategoryRecord {
  @override
  final String? category;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CategoryRecord([void Function(CategoryRecordBuilder)? updates]) =>
      (new CategoryRecordBuilder()..update(updates))._build();

  _$CategoryRecord._({this.category, this.ffRef}) : super._();

  @override
  CategoryRecord rebuild(void Function(CategoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryRecordBuilder toBuilder() =>
      new CategoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryRecord &&
        category == other.category &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, category.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryRecord')
          ..add('category', category)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CategoryRecordBuilder
    implements Builder<CategoryRecord, CategoryRecordBuilder> {
  _$CategoryRecord? _$v;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CategoryRecordBuilder() {
    CategoryRecord._initializeBuilder(this);
  }

  CategoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryRecord;
  }

  @override
  void update(void Function(CategoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryRecord build() => _build();

  _$CategoryRecord _build() {
    final _$result =
        _$v ?? new _$CategoryRecord._(category: category, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
