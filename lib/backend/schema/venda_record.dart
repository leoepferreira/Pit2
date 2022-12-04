import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'venda_record.g.dart';

abstract class VendaRecord implements Built<VendaRecord, VendaRecordBuilder> {
  static Serializer<VendaRecord> get serializer => _$vendaRecordSerializer;

  double? get valorTotal;

  DateTime? get dataVenda;

  DocumentReference? get usuario;

  DocumentReference? get endereco;

  bool? get pedidoSendoPreparado;

  bool? get enviadoParaEntrega;

  bool? get pagamentoComSucesso;

  bool? get entregaRealizada;

  BuiltList<DocumentReference>? get produtoVenda;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VendaRecordBuilder builder) => builder
    ..valorTotal = 0.0
    ..pedidoSendoPreparado = false
    ..enviadoParaEntrega = false
    ..pagamentoComSucesso = false
    ..entregaRealizada = false
    ..produtoVenda = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('venda');

  static Stream<VendaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VendaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VendaRecord._();
  factory VendaRecord([void Function(VendaRecordBuilder) updates]) =
      _$VendaRecord;

  static VendaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVendaRecordData({
  double? valorTotal,
  DateTime? dataVenda,
  DocumentReference? usuario,
  DocumentReference? endereco,
  bool? pedidoSendoPreparado,
  bool? enviadoParaEntrega,
  bool? pagamentoComSucesso,
  bool? entregaRealizada,
}) {
  final firestoreData = serializers.toFirestore(
    VendaRecord.serializer,
    VendaRecord(
      (v) => v
        ..valorTotal = valorTotal
        ..dataVenda = dataVenda
        ..usuario = usuario
        ..endereco = endereco
        ..pedidoSendoPreparado = pedidoSendoPreparado
        ..enviadoParaEntrega = enviadoParaEntrega
        ..pagamentoComSucesso = pagamentoComSucesso
        ..entregaRealizada = entregaRealizada
        ..produtoVenda = null,
    ),
  );

  return firestoreData;
}
