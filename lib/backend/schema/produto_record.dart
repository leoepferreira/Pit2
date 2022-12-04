import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'produto_record.g.dart';

abstract class ProdutoRecord
    implements Built<ProdutoRecord, ProdutoRecordBuilder> {
  static Serializer<ProdutoRecord> get serializer => _$produtoRecordSerializer;

  String? get name;

  String? get description;

  double? get price;

  String? get image;

  DocumentReference? get category;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProdutoRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..price = 0.0
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produto');

  static Stream<ProdutoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProdutoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProdutoRecord._();
  factory ProdutoRecord([void Function(ProdutoRecordBuilder) updates]) =
      _$ProdutoRecord;

  static ProdutoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProdutoRecordData({
  String? name,
  String? description,
  double? price,
  String? image,
  DocumentReference? category,
}) {
  final firestoreData = serializers.toFirestore(
    ProdutoRecord.serializer,
    ProdutoRecord(
      (p) => p
        ..name = name
        ..description = description
        ..price = price
        ..image = image
        ..category = category,
    ),
  );

  return firestoreData;
}
