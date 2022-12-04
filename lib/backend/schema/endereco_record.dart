import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'endereco_record.g.dart';

abstract class EnderecoRecord
    implements Built<EnderecoRecord, EnderecoRecordBuilder> {
  static Serializer<EnderecoRecord> get serializer =>
      _$enderecoRecordSerializer;

  String? get rua;

  String? get bairro;

  String? get cep;

  String? get cidade;

  String? get estado;

  String? get complemento;

  String? get numero;

  String? get identificador;

  DocumentReference? get usuario;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EnderecoRecordBuilder builder) => builder
    ..rua = ''
    ..bairro = ''
    ..cep = ''
    ..cidade = ''
    ..estado = ''
    ..complemento = ''
    ..numero = ''
    ..identificador = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('endereco');

  static Stream<EnderecoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EnderecoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EnderecoRecord._();
  factory EnderecoRecord([void Function(EnderecoRecordBuilder) updates]) =
      _$EnderecoRecord;

  static EnderecoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEnderecoRecordData({
  String? rua,
  String? bairro,
  String? cep,
  String? cidade,
  String? estado,
  String? complemento,
  String? numero,
  String? identificador,
  DocumentReference? usuario,
}) {
  final firestoreData = serializers.toFirestore(
    EnderecoRecord.serializer,
    EnderecoRecord(
      (e) => e
        ..rua = rua
        ..bairro = bairro
        ..cep = cep
        ..cidade = cidade
        ..estado = estado
        ..complemento = complemento
        ..numero = numero
        ..identificador = identificador
        ..usuario = usuario,
    ),
  );

  return firestoreData;
}
