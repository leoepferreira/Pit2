import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'produto_venda_record.g.dart';

abstract class ProdutoVendaRecord
    implements Built<ProdutoVendaRecord, ProdutoVendaRecordBuilder> {
  static Serializer<ProdutoVendaRecord> get serializer =>
      _$produtoVendaRecordSerializer;

  double? get valorSubtotal;

  DocumentReference? get produto;

  int? get quantidade;

  DocumentReference? get usuario;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProdutoVendaRecordBuilder builder) => builder
    ..valorSubtotal = 0.0
    ..quantidade = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produtoVenda');

  static Stream<ProdutoVendaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProdutoVendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProdutoVendaRecord._();
  factory ProdutoVendaRecord(
          [void Function(ProdutoVendaRecordBuilder) updates]) =
      _$ProdutoVendaRecord;

  static ProdutoVendaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProdutoVendaRecordData({
  double? valorSubtotal,
  DocumentReference? produto,
  int? quantidade,
  DocumentReference? usuario,
}) {
  final firestoreData = serializers.toFirestore(
    ProdutoVendaRecord.serializer,
    ProdutoVendaRecord(
      (p) => p
        ..valorSubtotal = valorSubtotal
        ..produto = produto
        ..quantidade = quantidade
        ..usuario = usuario,
    ),
  );

  return firestoreData;
}
