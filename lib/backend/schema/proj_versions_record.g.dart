// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proj_versions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjVersionsRecord> _$projVersionsRecordSerializer =
    new _$ProjVersionsRecordSerializer();

class _$ProjVersionsRecordSerializer
    implements StructuredSerializer<ProjVersionsRecord> {
  @override
  final Iterable<Type> types = const [ProjVersionsRecord, _$ProjVersionsRecord];
  @override
  final String wireName = 'ProjVersionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProjVersionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.versionName;
    if (value != null) {
      result
        ..add('versionName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audioFile;
    if (value != null) {
      result
        ..add('audioFile')
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
    value = object.uploadedBy;
    if (value != null) {
      result
        ..add('uploadedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projReference;
    if (value != null) {
      result
        ..add('projReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('createdDate')
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
  ProjVersionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjVersionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'versionName':
          result.versionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audioFile':
          result.audioFile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uploadedBy':
          result.uploadedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'projReference':
          result.projReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
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

class _$ProjVersionsRecord extends ProjVersionsRecord {
  @override
  final String? versionName;
  @override
  final String? audioFile;
  @override
  final String? description;
  @override
  final String? uploadedBy;
  @override
  final DocumentReference<Object?>? projReference;
  @override
  final DateTime? createdDate;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProjVersionsRecord(
          [void Function(ProjVersionsRecordBuilder)? updates]) =>
      (new ProjVersionsRecordBuilder()..update(updates))._build();

  _$ProjVersionsRecord._(
      {this.versionName,
      this.audioFile,
      this.description,
      this.uploadedBy,
      this.projReference,
      this.createdDate,
      this.ffRef})
      : super._();

  @override
  ProjVersionsRecord rebuild(
          void Function(ProjVersionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjVersionsRecordBuilder toBuilder() =>
      new ProjVersionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjVersionsRecord &&
        versionName == other.versionName &&
        audioFile == other.audioFile &&
        description == other.description &&
        uploadedBy == other.uploadedBy &&
        projReference == other.projReference &&
        createdDate == other.createdDate &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, versionName.hashCode), audioFile.hashCode),
                        description.hashCode),
                    uploadedBy.hashCode),
                projReference.hashCode),
            createdDate.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjVersionsRecord')
          ..add('versionName', versionName)
          ..add('audioFile', audioFile)
          ..add('description', description)
          ..add('uploadedBy', uploadedBy)
          ..add('projReference', projReference)
          ..add('createdDate', createdDate)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProjVersionsRecordBuilder
    implements Builder<ProjVersionsRecord, ProjVersionsRecordBuilder> {
  _$ProjVersionsRecord? _$v;

  String? _versionName;
  String? get versionName => _$this._versionName;
  set versionName(String? versionName) => _$this._versionName = versionName;

  String? _audioFile;
  String? get audioFile => _$this._audioFile;
  set audioFile(String? audioFile) => _$this._audioFile = audioFile;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _uploadedBy;
  String? get uploadedBy => _$this._uploadedBy;
  set uploadedBy(String? uploadedBy) => _$this._uploadedBy = uploadedBy;

  DocumentReference<Object?>? _projReference;
  DocumentReference<Object?>? get projReference => _$this._projReference;
  set projReference(DocumentReference<Object?>? projReference) =>
      _$this._projReference = projReference;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProjVersionsRecordBuilder() {
    ProjVersionsRecord._initializeBuilder(this);
  }

  ProjVersionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _versionName = $v.versionName;
      _audioFile = $v.audioFile;
      _description = $v.description;
      _uploadedBy = $v.uploadedBy;
      _projReference = $v.projReference;
      _createdDate = $v.createdDate;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjVersionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjVersionsRecord;
  }

  @override
  void update(void Function(ProjVersionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjVersionsRecord build() => _build();

  _$ProjVersionsRecord _build() {
    final _$result = _$v ??
        new _$ProjVersionsRecord._(
            versionName: versionName,
            audioFile: audioFile,
            description: description,
            uploadedBy: uploadedBy,
            projReference: projReference,
            createdDate: createdDate,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
