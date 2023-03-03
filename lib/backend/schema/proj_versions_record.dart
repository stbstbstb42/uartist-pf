import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'proj_versions_record.g.dart';

abstract class ProjVersionsRecord
    implements Built<ProjVersionsRecord, ProjVersionsRecordBuilder> {
  static Serializer<ProjVersionsRecord> get serializer =>
      _$projVersionsRecordSerializer;

  String? get versionName;

  String? get audioFile;

  String? get description;

  String? get uploadedBy;

  DocumentReference? get projReference;

  DateTime? get createdDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProjVersionsRecordBuilder builder) => builder
    ..versionName = ''
    ..audioFile = ''
    ..description = ''
    ..uploadedBy = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projVersions');

  static Stream<ProjVersionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProjVersionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProjVersionsRecord._();
  factory ProjVersionsRecord(
          [void Function(ProjVersionsRecordBuilder) updates]) =
      _$ProjVersionsRecord;

  static ProjVersionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProjVersionsRecordData({
  String? versionName,
  String? audioFile,
  String? description,
  String? uploadedBy,
  DocumentReference? projReference,
  DateTime? createdDate,
}) {
  final firestoreData = serializers.toFirestore(
    ProjVersionsRecord.serializer,
    ProjVersionsRecord(
      (p) => p
        ..versionName = versionName
        ..audioFile = audioFile
        ..description = description
        ..uploadedBy = uploadedBy
        ..projReference = projReference
        ..createdDate = createdDate,
    ),
  );

  return firestoreData;
}
