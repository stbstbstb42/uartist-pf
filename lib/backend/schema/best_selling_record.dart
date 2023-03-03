import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'best_selling_record.g.dart';

abstract class BestSellingRecord
    implements Built<BestSellingRecord, BestSellingRecordBuilder> {
  static Serializer<BestSellingRecord> get serializer =>
      _$bestSellingRecordSerializer;

  String? get seller;

  @BuiltValueField(wireName: 'template_name')
  String? get templateName;

  double? get rating;

  String? get image;

  String? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BestSellingRecordBuilder builder) => builder
    ..seller = ''
    ..templateName = ''
    ..rating = 0.0
    ..image = ''
    ..price = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bestSelling');

  static Stream<BestSellingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BestSellingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BestSellingRecord._();
  factory BestSellingRecord([void Function(BestSellingRecordBuilder) updates]) =
      _$BestSellingRecord;

  static BestSellingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBestSellingRecordData({
  String? seller,
  String? templateName,
  double? rating,
  String? image,
  String? price,
}) {
  final firestoreData = serializers.toFirestore(
    BestSellingRecord.serializer,
    BestSellingRecord(
      (b) => b
        ..seller = seller
        ..templateName = templateName
        ..rating = rating
        ..image = image
        ..price = price,
    ),
  );

  return firestoreData;
}
