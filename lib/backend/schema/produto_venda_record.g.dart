// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_venda_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdutoVendaRecord> _$produtoVendaRecordSerializer =
    new _$ProdutoVendaRecordSerializer();

class _$ProdutoVendaRecordSerializer
    implements StructuredSerializer<ProdutoVendaRecord> {
  @override
  final Iterable<Type> types = const [ProdutoVendaRecord, _$ProdutoVendaRecord];
  @override
  final String wireName = 'ProdutoVendaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProdutoVendaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.valorSubtotal;
    if (value != null) {
      result
        ..add('valorSubtotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.produto;
    if (value != null) {
      result
        ..add('produto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.quantidade;
    if (value != null) {
      result
        ..add('quantidade')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.usuario;
    if (value != null) {
      result
        ..add('usuario')
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
  ProdutoVendaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdutoVendaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'valorSubtotal':
          result.valorSubtotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'produto':
          result.produto = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'quantidade':
          result.quantidade = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'usuario':
          result.usuario = serializers.deserialize(value,
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

class _$ProdutoVendaRecord extends ProdutoVendaRecord {
  @override
  final double? valorSubtotal;
  @override
  final DocumentReference<Object?>? produto;
  @override
  final int? quantidade;
  @override
  final DocumentReference<Object?>? usuario;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProdutoVendaRecord(
          [void Function(ProdutoVendaRecordBuilder)? updates]) =>
      (new ProdutoVendaRecordBuilder()..update(updates))._build();

  _$ProdutoVendaRecord._(
      {this.valorSubtotal,
      this.produto,
      this.quantidade,
      this.usuario,
      this.ffRef})
      : super._();

  @override
  ProdutoVendaRecord rebuild(
          void Function(ProdutoVendaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdutoVendaRecordBuilder toBuilder() =>
      new ProdutoVendaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdutoVendaRecord &&
        valorSubtotal == other.valorSubtotal &&
        produto == other.produto &&
        quantidade == other.quantidade &&
        usuario == other.usuario &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, valorSubtotal.hashCode), produto.hashCode),
                quantidade.hashCode),
            usuario.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProdutoVendaRecord')
          ..add('valorSubtotal', valorSubtotal)
          ..add('produto', produto)
          ..add('quantidade', quantidade)
          ..add('usuario', usuario)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProdutoVendaRecordBuilder
    implements Builder<ProdutoVendaRecord, ProdutoVendaRecordBuilder> {
  _$ProdutoVendaRecord? _$v;

  double? _valorSubtotal;
  double? get valorSubtotal => _$this._valorSubtotal;
  set valorSubtotal(double? valorSubtotal) =>
      _$this._valorSubtotal = valorSubtotal;

  DocumentReference<Object?>? _produto;
  DocumentReference<Object?>? get produto => _$this._produto;
  set produto(DocumentReference<Object?>? produto) => _$this._produto = produto;

  int? _quantidade;
  int? get quantidade => _$this._quantidade;
  set quantidade(int? quantidade) => _$this._quantidade = quantidade;

  DocumentReference<Object?>? _usuario;
  DocumentReference<Object?>? get usuario => _$this._usuario;
  set usuario(DocumentReference<Object?>? usuario) => _$this._usuario = usuario;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProdutoVendaRecordBuilder() {
    ProdutoVendaRecord._initializeBuilder(this);
  }

  ProdutoVendaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _valorSubtotal = $v.valorSubtotal;
      _produto = $v.produto;
      _quantidade = $v.quantidade;
      _usuario = $v.usuario;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdutoVendaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdutoVendaRecord;
  }

  @override
  void update(void Function(ProdutoVendaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProdutoVendaRecord build() => _build();

  _$ProdutoVendaRecord _build() {
    final _$result = _$v ??
        new _$ProdutoVendaRecord._(
            valorSubtotal: valorSubtotal,
            produto: produto,
            quantidade: quantidade,
            usuario: usuario,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
