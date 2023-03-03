// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkspaceRecord> _$workspaceRecordSerializer =
    new _$WorkspaceRecordSerializer();

class _$WorkspaceRecordSerializer
    implements StructuredSerializer<WorkspaceRecord> {
  @override
  final Iterable<Type> types = const [WorkspaceRecord, _$WorkspaceRecord];
  @override
  final String wireName = 'WorkspaceRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WorkspaceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.wsImage;
    if (value != null) {
      result
        ..add('ws_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wsName;
    if (value != null) {
      result
        ..add('ws_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.partecipants;
    if (value != null) {
      result
        ..add('partecipants')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  WorkspaceRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkspaceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ws_image':
          result.wsImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ws_name':
          result.wsName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'partecipants':
          result.partecipants.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$WorkspaceRecord extends WorkspaceRecord {
  @override
  final String? wsImage;
  @override
  final String? wsName;
  @override
  final BuiltList<DocumentReference<Object?>>? partecipants;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WorkspaceRecord([void Function(WorkspaceRecordBuilder)? updates]) =>
      (new WorkspaceRecordBuilder()..update(updates))._build();

  _$WorkspaceRecord._(
      {this.wsImage, this.wsName, this.partecipants, this.ffRef})
      : super._();

  @override
  WorkspaceRecord rebuild(void Function(WorkspaceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkspaceRecordBuilder toBuilder() =>
      new WorkspaceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkspaceRecord &&
        wsImage == other.wsImage &&
        wsName == other.wsName &&
        partecipants == other.partecipants &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, wsImage.hashCode), wsName.hashCode),
            partecipants.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkspaceRecord')
          ..add('wsImage', wsImage)
          ..add('wsName', wsName)
          ..add('partecipants', partecipants)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WorkspaceRecordBuilder
    implements Builder<WorkspaceRecord, WorkspaceRecordBuilder> {
  _$WorkspaceRecord? _$v;

  String? _wsImage;
  String? get wsImage => _$this._wsImage;
  set wsImage(String? wsImage) => _$this._wsImage = wsImage;

  String? _wsName;
  String? get wsName => _$this._wsName;
  set wsName(String? wsName) => _$this._wsName = wsName;

  ListBuilder<DocumentReference<Object?>>? _partecipants;
  ListBuilder<DocumentReference<Object?>> get partecipants =>
      _$this._partecipants ??= new ListBuilder<DocumentReference<Object?>>();
  set partecipants(ListBuilder<DocumentReference<Object?>>? partecipants) =>
      _$this._partecipants = partecipants;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WorkspaceRecordBuilder() {
    WorkspaceRecord._initializeBuilder(this);
  }

  WorkspaceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wsImage = $v.wsImage;
      _wsName = $v.wsName;
      _partecipants = $v.partecipants?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkspaceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkspaceRecord;
  }

  @override
  void update(void Function(WorkspaceRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkspaceRecord build() => _build();

  _$WorkspaceRecord _build() {
    _$WorkspaceRecord _$result;
    try {
      _$result = _$v ??
          new _$WorkspaceRecord._(
              wsImage: wsImage,
              wsName: wsName,
              partecipants: _partecipants?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'partecipants';
        _partecipants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WorkspaceRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
