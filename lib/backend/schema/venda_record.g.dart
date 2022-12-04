// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venda_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VendaRecord> _$vendaRecordSerializer = new _$VendaRecordSerializer();

class _$VendaRecordSerializer implements StructuredSerializer<VendaRecord> {
  @override
  final Iterable<Type> types = const [VendaRecord, _$VendaRecord];
  @override
  final String wireName = 'VendaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VendaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.valorTotal;
    if (value != null) {
      result
        ..add('valorTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dataVenda;
    if (value != null) {
      result
        ..add('dataVenda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.usuario;
    if (value != null) {
      result
        ..add('usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.endereco;
    if (value != null) {
      result
        ..add('endereco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.pedidoSendoPreparado;
    if (value != null) {
      result
        ..add('pedidoSendoPreparado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.enviadoParaEntrega;
    if (value != null) {
      result
        ..add('enviadoParaEntrega')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.pagamentoComSucesso;
    if (value != null) {
      result
        ..add('pagamentoComSucesso')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.entregaRealizada;
    if (value != null) {
      result
        ..add('entregaRealizada')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.produtoVenda;
    if (value != null) {
      result
        ..add('produtoVenda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  VendaRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VendaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'valorTotal':
          result.valorTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'dataVenda':
          result.dataVenda = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'usuario':
          result.usuario = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'endereco':
          result.endereco = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'pedidoSendoPreparado':
          result.pedidoSendoPreparado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'enviadoParaEntrega':
          result.enviadoParaEntrega = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'pagamentoComSucesso':
          result.pagamentoComSucesso = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'entregaRealizada':
          result.entregaRealizada = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'produtoVenda':
          result.produtoVenda.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$VendaRecord extends VendaRecord {
  @override
  final double? valorTotal;
  @override
  final DateTime? dataVenda;
  @override
  final DocumentReference<Object?>? usuario;
  @override
  final DocumentReference<Object?>? endereco;
  @override
  final bool? pedidoSendoPreparado;
  @override
  final bool? enviadoParaEntrega;
  @override
  final bool? pagamentoComSucesso;
  @override
  final bool? entregaRealizada;
  @override
  final BuiltList<DocumentReference<Object?>>? produtoVenda;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VendaRecord([void Function(VendaRecordBuilder)? updates]) =>
      (new VendaRecordBuilder()..update(updates))._build();

  _$VendaRecord._(
      {this.valorTotal,
      this.dataVenda,
      this.usuario,
      this.endereco,
      this.pedidoSendoPreparado,
      this.enviadoParaEntrega,
      this.pagamentoComSucesso,
      this.entregaRealizada,
      this.produtoVenda,
      this.ffRef})
      : super._();

  @override
  VendaRecord rebuild(void Function(VendaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VendaRecordBuilder toBuilder() => new VendaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VendaRecord &&
        valorTotal == other.valorTotal &&
        dataVenda == other.dataVenda &&
        usuario == other.usuario &&
        endereco == other.endereco &&
        pedidoSendoPreparado == other.pedidoSendoPreparado &&
        enviadoParaEntrega == other.enviadoParaEntrega &&
        pagamentoComSucesso == other.pagamentoComSucesso &&
        entregaRealizada == other.entregaRealizada &&
        produtoVenda == other.produtoVenda &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, valorTotal.hashCode),
                                        dataVenda.hashCode),
                                    usuario.hashCode),
                                endereco.hashCode),
                            pedidoSendoPreparado.hashCode),
                        enviadoParaEntrega.hashCode),
                    pagamentoComSucesso.hashCode),
                entregaRealizada.hashCode),
            produtoVenda.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VendaRecord')
          ..add('valorTotal', valorTotal)
          ..add('dataVenda', dataVenda)
          ..add('usuario', usuario)
          ..add('endereco', endereco)
          ..add('pedidoSendoPreparado', pedidoSendoPreparado)
          ..add('enviadoParaEntrega', enviadoParaEntrega)
          ..add('pagamentoComSucesso', pagamentoComSucesso)
          ..add('entregaRealizada', entregaRealizada)
          ..add('produtoVenda', produtoVenda)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VendaRecordBuilder implements Builder<VendaRecord, VendaRecordBuilder> {
  _$VendaRecord? _$v;

  double? _valorTotal;
  double? get valorTotal => _$this._valorTotal;
  set valorTotal(double? valorTotal) => _$this._valorTotal = valorTotal;

  DateTime? _dataVenda;
  DateTime? get dataVenda => _$this._dataVenda;
  set dataVenda(DateTime? dataVenda) => _$this._dataVenda = dataVenda;

  DocumentReference<Object?>? _usuario;
  DocumentReference<Object?>? get usuario => _$this._usuario;
  set usuario(DocumentReference<Object?>? usuario) => _$this._usuario = usuario;

  DocumentReference<Object?>? _endereco;
  DocumentReference<Object?>? get endereco => _$this._endereco;
  set endereco(DocumentReference<Object?>? endereco) =>
      _$this._endereco = endereco;

  bool? _pedidoSendoPreparado;
  bool? get pedidoSendoPreparado => _$this._pedidoSendoPreparado;
  set pedidoSendoPreparado(bool? pedidoSendoPreparado) =>
      _$this._pedidoSendoPreparado = pedidoSendoPreparado;

  bool? _enviadoParaEntrega;
  bool? get enviadoParaEntrega => _$this._enviadoParaEntrega;
  set enviadoParaEntrega(bool? enviadoParaEntrega) =>
      _$this._enviadoParaEntrega = enviadoParaEntrega;

  bool? _pagamentoComSucesso;
  bool? get pagamentoComSucesso => _$this._pagamentoComSucesso;
  set pagamentoComSucesso(bool? pagamentoComSucesso) =>
      _$this._pagamentoComSucesso = pagamentoComSucesso;

  bool? _entregaRealizada;
  bool? get entregaRealizada => _$this._entregaRealizada;
  set entregaRealizada(bool? entregaRealizada) =>
      _$this._entregaRealizada = entregaRealizada;

  ListBuilder<DocumentReference<Object?>>? _produtoVenda;
  ListBuilder<DocumentReference<Object?>> get produtoVenda =>
      _$this._produtoVenda ??= new ListBuilder<DocumentReference<Object?>>();
  set produtoVenda(ListBuilder<DocumentReference<Object?>>? produtoVenda) =>
      _$this._produtoVenda = produtoVenda;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VendaRecordBuilder() {
    VendaRecord._initializeBuilder(this);
  }

  VendaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _valorTotal = $v.valorTotal;
      _dataVenda = $v.dataVenda;
      _usuario = $v.usuario;
      _endereco = $v.endereco;
      _pedidoSendoPreparado = $v.pedidoSendoPreparado;
      _enviadoParaEntrega = $v.enviadoParaEntrega;
      _pagamentoComSucesso = $v.pagamentoComSucesso;
      _entregaRealizada = $v.entregaRealizada;
      _produtoVenda = $v.produtoVenda?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VendaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VendaRecord;
  }

  @override
  void update(void Function(VendaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VendaRecord build() => _build();

  _$VendaRecord _build() {
    _$VendaRecord _$result;
    try {
      _$result = _$v ??
          new _$VendaRecord._(
              valorTotal: valorTotal,
              dataVenda: dataVenda,
              usuario: usuario,
              endereco: endereco,
              pedidoSendoPreparado: pedidoSendoPreparado,
              enviadoParaEntrega: enviadoParaEntrega,
              pagamentoComSucesso: pagamentoComSucesso,
              entregaRealizada: entregaRealizada,
              produtoVenda: _produtoVenda?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'produtoVenda';
        _produtoVenda?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VendaRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
