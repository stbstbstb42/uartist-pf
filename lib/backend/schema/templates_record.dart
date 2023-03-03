import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'templates_record.g.dart';

abstract class TemplatesRecord
    implements Built<TemplatesRecord, TemplatesRecordBuilder> {
  static Serializer<TemplatesRecord> get serializer =>
      _$templatesRecordSerializer;

  String? get seller;

  @BuiltValueField(wireName: 'template_name')
  String? get templateName;

  double? get rating;

  String? get image;

  String? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TemplatesRecordBuilder builder) => builder
    ..seller = ''
    ..templateName = ''
    ..rating = 0.0
    ..image = ''
    ..price = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('templates');

  static Stream<TemplatesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TemplatesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TemplatesRecord._();
  factory TemplatesRecord([void Function(TemplatesRecordBuilder) updates]) =
      _$TemplatesRecord;

  static TemplatesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTemplatesRecordData({
  String? seller,
  String? templateName,
  double? rating,
  String? image,
  String? price,
}) {
  final firestoreData = serializers.toFirestore(
    TemplatesRecord.serializer,
    TemplatesRecord(
      (t) => t
        ..seller = seller
        ..templateName = templateName
        ..rating = rating
        ..image = image
        ..price = price,
    ),
  );

  return firestoreData;
}
