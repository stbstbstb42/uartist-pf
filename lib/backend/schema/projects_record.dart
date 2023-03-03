import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'projects_record.g.dart';

abstract class ProjectsRecord
    implements Built<ProjectsRecord, ProjectsRecordBuilder> {
  static Serializer<ProjectsRecord> get serializer =>
      _$projectsRecordSerializer;

  @BuiltValueField(wireName: 'project_name')
  String? get projectName;

  String? get description;

  @BuiltValueField(wireName: 'number_tasks')
  int? get numberTasks;

  @BuiltValueField(wireName: 'completed_tasks')
  int? get completedTasks;

  @BuiltValueField(wireName: 'last_edited')
  DateTime? get lastEdited;

  @BuiltValueField(wireName: 'time_created')
  DateTime? get timeCreated;

  @BuiltValueField(wireName: 'if_completed')
  bool? get ifCompleted;

  String? get type;

  @BuiltValueField(wireName: 'project_image')
  String? get projectImage;

  DateTime? get deadline;

  @BuiltValueField(wireName: 'artist_name')
  String? get artistName;

  @BuiltValueField(wireName: 'deadline_set')
  bool? get deadlineSet;

  @BuiltValueField(wireName: 'assigned_to')
  BuiltList<DocumentReference>? get assignedTo;

  DocumentReference? get owner;

  @BuiltValueField(wireName: 'pj_versions')
  BuiltList<DocumentReference>? get pjVersions;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProjectsRecordBuilder builder) => builder
    ..projectName = ''
    ..description = ''
    ..numberTasks = 0
    ..completedTasks = 0
    ..ifCompleted = false
    ..type = ''
    ..projectImage = ''
    ..artistName = ''
    ..deadlineSet = false
    ..assignedTo = ListBuilder()
    ..pjVersions = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProjectsRecord._();
  factory ProjectsRecord([void Function(ProjectsRecordBuilder) updates]) =
      _$ProjectsRecord;

  static ProjectsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProjectsRecordData({
  String? projectName,
  String? description,
  int? numberTasks,
  int? completedTasks,
  DateTime? lastEdited,
  DateTime? timeCreated,
  bool? ifCompleted,
  String? type,
  String? projectImage,
  DateTime? deadline,
  String? artistName,
  bool? deadlineSet,
  DocumentReference? owner,
}) {
  final firestoreData = serializers.toFirestore(
    ProjectsRecord.serializer,
    ProjectsRecord(
      (p) => p
        ..projectName = projectName
        ..description = description
        ..numberTasks = numberTasks
        ..completedTasks = completedTasks
        ..lastEdited = lastEdited
        ..timeCreated = timeCreated
        ..ifCompleted = ifCompleted
        ..type = type
        ..projectImage = projectImage
        ..deadline = deadline
        ..artistName = artistName
        ..deadlineSet = deadlineSet
        ..assignedTo = null
        ..owner = owner
        ..pjVersions = null,
    ),
  );

  return firestoreData;
}
