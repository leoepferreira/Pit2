// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnderecoRecord> _$enderecoRecordSerializer =
    new _$EnderecoRecordSerializer();

class _$EnderecoRecordSerializer
    implements StructuredSerializer<EnderecoRecord> {
  @override
  final Iterable<Type> types = const [EnderecoRecord, _$EnderecoRecord];
  @override
  final String wireName = 'EnderecoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EnderecoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rua;
    if (value != null) {
      result
        ..add('rua')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bairro;
    if (value != null) {
      result
        ..add('bairro')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cep;
    if (value != null) {
      result
        ..add('cep')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cidade;
    if (value != null) {
      result
        ..add('cidade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estado;
    if (value != null) {
      result
        ..add('estado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.complemento;
    if (value != null) {
      result
        ..add('complemento')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numero;
    if (value != null) {
      result
        ..add('numero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.identificador;
    if (value != null) {
      result
        ..add('identificador')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  EnderecoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnderecoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rua':
          result.rua = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bairro':
          result.bairro = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cep':
          result.cep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cidade':
          result.cidade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'estado':
          result.estado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'complemento':
          result.complemento = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numero':
          result.numero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'identificador':
          result.identificador = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$EnderecoRecord extends EnderecoRecord {
  @override
  final String? rua;
  @override
  final String? bairro;
  @override
  final String? cep;
  @override
  final String? cidade;
  @override
  final String? estado;
  @override
  final String? complemento;
  @override
  final String? numero;
  @override
  final String? identificador;
  @override
  final DocumentReference<Object?>? usuario;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EnderecoRecord([void Function(EnderecoRecordBuilder)? updates]) =>
      (new EnderecoRecordBuilder()..update(updates))._build();

  _$EnderecoRecord._(
      {this.rua,
      this.bairro,
      this.cep,
      this.cidade,
      this.estado,
      this.complemento,
      this.numero,
      this.identificador,
      this.usuario,
      this.ffRef})
      : super._();

  @override
  EnderecoRecord rebuild(void Function(EnderecoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnderecoRecordBuilder toBuilder() =>
      new EnderecoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnderecoRecord &&
        rua == other.rua &&
        bairro == other.bairro &&
        cep == other.cep &&
        cidade == other.cidade &&
        estado == other.estado &&
        complemento == other.complemento &&
        numero == other.numero &&
        identificador == other.identificador &&
        usuario == other.usuario &&
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
                                $jc($jc($jc(0, rua.hashCode), bairro.hashCode),
                                    cep.hashCode),
                                cidade.hashCode),
                            estado.hashCode),
                        complemento.hashCode),
                    numero.hashCode),
                identificador.hashCode),
            usuario.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnderecoRecord')
          ..add('rua', rua)
          ..add('bairro', bairro)
          ..add('cep', cep)
          ..add('cidade', cidade)
          ..add('estado', estado)
          ..add('complemento', complemento)
          ..add('numero', numero)
          ..add('identificador', identificador)
          ..add('usuario', usuario)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EnderecoRecordBuilder
    implements Builder<EnderecoRecord, EnderecoRecordBuilder> {
  _$EnderecoRecord? _$v;

  String? _rua;
  String? get rua => _$this._rua;
  set rua(String? rua) => _$this._rua = rua;

  String? _bairro;
  String? get bairro => _$this._bairro;
  set bairro(String? bairro) => _$this._bairro = bairro;

  String? _cep;
  String? get cep => _$this._cep;
  set cep(String? cep) => _$this._cep = cep;

  String? _cidade;
  String? get cidade => _$this._cidade;
  set cidade(String? cidade) => _$this._cidade = cidade;

  String? _estado;
  String? get estado => _$this._estado;
  set estado(String? estado) => _$this._estado = estado;

  String? _complemento;
  String? get complemento => _$this._complemento;
  set complemento(String? complemento) => _$this._complemento = complemento;

  String? _numero;
  String? get numero => _$this._numero;
  set numero(String? numero) => _$this._numero = numero;

  String? _identificador;
  String? get identificador => _$this._identificador;
  set identificador(String? identificador) =>
      _$this._identificador = identificador;

  DocumentReference<Object?>? _usuario;
  DocumentReference<Object?>? get usuario => _$this._usuario;
  set usuario(DocumentReference<Object?>? usuario) => _$this._usuario = usuario;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EnderecoRecordBuilder() {
    EnderecoRecord._initializeBuilder(this);
  }

  EnderecoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rua = $v.rua;
      _bairro = $v.bairro;
      _cep = $v.cep;
      _cidade = $v.cidade;
      _estado = $v.estado;
      _complemento = $v.complemento;
      _numero = $v.numero;
      _identificador = $v.identificador;
      _usuario = $v.usuario;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnderecoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnderecoRecord;
  }

  @override
  void update(void Function(EnderecoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnderecoRecord build() => _build();

  _$EnderecoRecord _build() {
    final _$result = _$v ??
        new _$EnderecoRecord._(
            rua: rua,
            bairro: bairro,
            cep: cep,
            cidade: cidade,
            estado: estado,
            complemento: complemento,
            numero: numero,
            identificador: identificador,
            usuario: usuario,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
