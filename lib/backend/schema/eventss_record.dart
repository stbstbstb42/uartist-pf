import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'eventss_record.g.dart';

abstract class EventssRecord
    implements Built<EventssRecord, EventssRecordBuilder> {
  static Serializer<EventssRecord> get serializer => _$eventssRecordSerializer;

  @BuiltValueField(wireName: 'u_assigned')
  BuiltList<DocumentReference>? get uAssigned;

  @BuiltValueField(wireName: 'event_name')
  String? get eventName;

  String? get description;

  DateTime? get createdInDate;

  DateTime? get beginDate;

  DateTime? get endDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventssRecordBuilder builder) => builder
    ..uAssigned = ListBuilder()
    ..eventName = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eventss');

  static Stream<EventssRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventssRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventssRecord._();
  factory EventssRecord([void Function(EventssRecordBuilder) updates]) =
      _$EventssRecord;

  static EventssRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventssRecordData({
  String? eventName,
  String? description,
  DateTime? createdInDate,
  DateTime? beginDate,
  DateTime? endDate,
}) {
  final firestoreData = serializers.toFirestore(
    EventssRecord.serializer,
    EventssRecord(
      (e) => e
        ..uAssigned = null
        ..eventName = eventName
        ..description = description
        ..createdInDate = createdInDate
        ..beginDate = beginDate
        ..endDate = endDate,
    ),
  );

  return firestoreData;
}
