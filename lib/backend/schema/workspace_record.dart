import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'workspace_record.g.dart';

abstract class WorkspaceRecord
    implements Built<WorkspaceRecord, WorkspaceRecordBuilder> {
  static Serializer<WorkspaceRecord> get serializer =>
      _$workspaceRecordSerializer;

  @BuiltValueField(wireName: 'ws_image')
  String? get wsImage;

  @BuiltValueField(wireName: 'ws_name')
  String? get wsName;

  BuiltList<DocumentReference>? get partecipants;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WorkspaceRecordBuilder builder) => builder
    ..wsImage = ''
    ..wsName = ''
    ..partecipants = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('workspace');

  static Stream<WorkspaceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WorkspaceRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WorkspaceRecord._();
  factory WorkspaceRecord([void Function(WorkspaceRecordBuilder) updates]) =
      _$WorkspaceRecord;

  static WorkspaceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWorkspaceRecordData({
  String? wsImage,
  String? wsName,
}) {
  final firestoreData = serializers.toFirestore(
    WorkspaceRecord.serializer,
    WorkspaceRecord(
      (w) => w
        ..wsImage = wsImage
        ..wsName = wsName
        ..partecipants = null,
    ),
  );

  return firestoreData;
}
