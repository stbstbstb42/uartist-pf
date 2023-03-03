// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eventss_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventssRecord> _$eventssRecordSerializer =
    new _$EventssRecordSerializer();

class _$EventssRecordSerializer implements StructuredSerializer<EventssRecord> {
  @override
  final Iterable<Type> types = const [EventssRecord, _$EventssRecord];
  @override
  final String wireName = 'EventssRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EventssRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uAssigned;
    if (value != null) {
      result
        ..add('u_assigned')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.eventName;
    if (value != null) {
      result
        ..add('event_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdInDate;
    if (value != null) {
      result
        ..add('createdInDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.beginDate;
    if (value != null) {
      result
        ..add('beginDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EventssRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventssRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'u_assigned':
          result.uAssigned.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'event_name':
          result.eventName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdInDate':
          result.createdInDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'beginDate':
          result.beginDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$EventssRecord extends EventssRecord {
  @override
  final BuiltList<DocumentReference<Object?>>? uAssigned;
  @override
  final String? eventName;
  @override
  final String? description;
  @override
  final DateTime? createdInDate;
  @override
  final DateTime? beginDate;
  @override
  final DateTime? endDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EventssRecord([void Function(EventssRecordBuilder)? updates]) =>
      (new EventssRecordBuilder()..update(updates))._build();

  _$EventssRecord._(
      {this.uAssigned,
      this.eventName,
      this.description,
      this.createdInDate,
      this.beginDate,
      this.endDate,
      this.ffRef})
      : super._();

  @override
  EventssRecord rebuild(void Function(EventssRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventssRecordBuilder toBuilder() => new EventssRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventssRecord &&
        uAssigned == other.uAssigned &&
        eventName == other.eventName &&
        description == other.description &&
        createdInDate == other.createdInDate &&
        beginDate == other.beginDate &&
        endDate == other.endDate &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uAssigned.hashCode), eventName.hashCode),
                        description.hashCode),
                    createdInDate.hashCode),
                beginDate.hashCode),
            endDate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventssRecord')
          ..add('uAssigned', uAssigned)
          ..add('eventName', eventName)
          ..add('description', description)
          ..add('createdInDate', createdInDate)
          ..add('beginDate', beginDate)
          ..add('endDate', endDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EventssRecordBuilder
    implements Builder<EventssRecord, EventssRecordBuilder> {
  _$EventssRecord? _$v;

  ListBuilder<DocumentReference<Object?>>? _uAssigned;
  ListBuilder<DocumentReference<Object?>> get uAssigned =>
      _$this._uAssigned ??= new ListBuilder<DocumentReference<Object?>>();
  set uAssigned(ListBuilder<DocumentReference<Object?>>? uAssigned) =>
      _$this._uAssigned = uAssigned;

  String? _eventName;
  String? get eventName => _$this._eventName;
  set eventName(String? eventName) => _$this._eventName = eventName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createdInDate;
  DateTime? get createdInDate => _$this._createdInDate;
  set createdInDate(DateTime? createdInDate) =>
      _$this._createdInDate = createdInDate;

  DateTime? _beginDate;
  DateTime? get beginDate => _$this._beginDate;
  set beginDate(DateTime? beginDate) => _$this._beginDate = beginDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EventssRecordBuilder() {
    EventssRecord._initializeBuilder(this);
  }

  EventssRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uAssigned = $v.uAssigned?.toBuilder();
      _eventName = $v.eventName;
      _description = $v.description;
      _createdInDate = $v.createdInDate;
      _beginDate = $v.beginDate;
      _endDate = $v.endDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventssRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventssRecord;
  }

  @override
  void update(void Function(EventssRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventssRecord build() => _build();

  _$EventssRecord _build() {
    _$EventssRecord _$result;
    try {
      _$result = _$v ??
          new _$EventssRecord._(
              uAssigned: _uAssigned?.build(),
              eventName: eventName,
              description: description,
              createdInDate: createdInDate,
              beginDate: beginDate,
              endDate: endDate,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uAssigned';
        _uAssigned?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventssRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
