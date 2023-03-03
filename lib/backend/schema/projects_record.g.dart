// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectsRecord> _$projectsRecordSerializer =
    new _$ProjectsRecordSerializer();

class _$ProjectsRecordSerializer
    implements StructuredSerializer<ProjectsRecord> {
  @override
  final Iterable<Type> types = const [ProjectsRecord, _$ProjectsRecord];
  @override
  final String wireName = 'ProjectsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProjectsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.projectName;
    if (value != null) {
      result
        ..add('project_name')
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
    value = object.numberTasks;
    if (value != null) {
      result
        ..add('number_tasks')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.completedTasks;
    if (value != null) {
      result
        ..add('completed_tasks')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastEdited;
    if (value != null) {
      result
        ..add('last_edited')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.timeCreated;
    if (value != null) {
      result
        ..add('time_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ifCompleted;
    if (value != null) {
      result
        ..add('if_completed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectImage;
    if (value != null) {
      result
        ..add('project_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deadline;
    if (value != null) {
      result
        ..add('deadline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.artistName;
    if (value != null) {
      result
        ..add('artist_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.deadlineSet;
    if (value != null) {
      result
        ..add('deadline_set')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.assignedTo;
    if (value != null) {
      result
        ..add('assigned_to')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.pjVersions;
    if (value != null) {
      result
        ..add('pj_versions')
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
  ProjectsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'project_name':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_tasks':
          result.numberTasks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'completed_tasks':
          result.completedTasks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'last_edited':
          result.lastEdited = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'time_created':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'if_completed':
          result.ifCompleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'project_image':
          result.projectImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deadline':
          result.deadline = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'artist_name':
          result.artistName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'deadline_set':
          result.deadlineSet = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'assigned_to':
          result.assignedTo.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'pj_versions':
          result.pjVersions.replace(serializers.deserialize(value,
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

class _$ProjectsRecord extends ProjectsRecord {
  @override
  final String? projectName;
  @override
  final String? description;
  @override
  final int? numberTasks;
  @override
  final int? completedTasks;
  @override
  final DateTime? lastEdited;
  @override
  final DateTime? timeCreated;
  @override
  final bool? ifCompleted;
  @override
  final String? type;
  @override
  final String? projectImage;
  @override
  final DateTime? deadline;
  @override
  final String? artistName;
  @override
  final bool? deadlineSet;
  @override
  final BuiltList<DocumentReference<Object?>>? assignedTo;
  @override
  final DocumentReference<Object?>? owner;
  @override
  final BuiltList<DocumentReference<Object?>>? pjVersions;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProjectsRecord([void Function(ProjectsRecordBuilder)? updates]) =>
      (new ProjectsRecordBuilder()..update(updates))._build();

  _$ProjectsRecord._(
      {this.projectName,
      this.description,
      this.numberTasks,
      this.completedTasks,
      this.lastEdited,
      this.timeCreated,
      this.ifCompleted,
      this.type,
      this.projectImage,
      this.deadline,
      this.artistName,
      this.deadlineSet,
      this.assignedTo,
      this.owner,
      this.pjVersions,
      this.ffRef})
      : super._();

  @override
  ProjectsRecord rebuild(void Function(ProjectsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectsRecordBuilder toBuilder() =>
      new ProjectsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectsRecord &&
        projectName == other.projectName &&
        description == other.description &&
        numberTasks == other.numberTasks &&
        completedTasks == other.completedTasks &&
        lastEdited == other.lastEdited &&
        timeCreated == other.timeCreated &&
        ifCompleted == other.ifCompleted &&
        type == other.type &&
        projectImage == other.projectImage &&
        deadline == other.deadline &&
        artistName == other.artistName &&
        deadlineSet == other.deadlineSet &&
        assignedTo == other.assignedTo &&
        owner == other.owner &&
        pjVersions == other.pjVersions &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    projectName
                                                                        .hashCode),
                                                                description
                                                                    .hashCode),
                                                            numberTasks
                                                                .hashCode),
                                                        completedTasks
                                                            .hashCode),
                                                    lastEdited.hashCode),
                                                timeCreated.hashCode),
                                            ifCompleted.hashCode),
                                        type.hashCode),
                                    projectImage.hashCode),
                                deadline.hashCode),
                            artistName.hashCode),
                        deadlineSet.hashCode),
                    assignedTo.hashCode),
                owner.hashCode),
            pjVersions.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectsRecord')
          ..add('projectName', projectName)
          ..add('description', description)
          ..add('numberTasks', numberTasks)
          ..add('completedTasks', completedTasks)
          ..add('lastEdited', lastEdited)
          ..add('timeCreated', timeCreated)
          ..add('ifCompleted', ifCompleted)
          ..add('type', type)
          ..add('projectImage', projectImage)
          ..add('deadline', deadline)
          ..add('artistName', artistName)
          ..add('deadlineSet', deadlineSet)
          ..add('assignedTo', assignedTo)
          ..add('owner', owner)
          ..add('pjVersions', pjVersions)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProjectsRecordBuilder
    implements Builder<ProjectsRecord, ProjectsRecordBuilder> {
  _$ProjectsRecord? _$v;

  String? _projectName;
  String? get projectName => _$this._projectName;
  set projectName(String? projectName) => _$this._projectName = projectName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _numberTasks;
  int? get numberTasks => _$this._numberTasks;
  set numberTasks(int? numberTasks) => _$this._numberTasks = numberTasks;

  int? _completedTasks;
  int? get completedTasks => _$this._completedTasks;
  set completedTasks(int? completedTasks) =>
      _$this._completedTasks = completedTasks;

  DateTime? _lastEdited;
  DateTime? get lastEdited => _$this._lastEdited;
  set lastEdited(DateTime? lastEdited) => _$this._lastEdited = lastEdited;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  bool? _ifCompleted;
  bool? get ifCompleted => _$this._ifCompleted;
  set ifCompleted(bool? ifCompleted) => _$this._ifCompleted = ifCompleted;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _projectImage;
  String? get projectImage => _$this._projectImage;
  set projectImage(String? projectImage) => _$this._projectImage = projectImage;

  DateTime? _deadline;
  DateTime? get deadline => _$this._deadline;
  set deadline(DateTime? deadline) => _$this._deadline = deadline;

  String? _artistName;
  String? get artistName => _$this._artistName;
  set artistName(String? artistName) => _$this._artistName = artistName;

  bool? _deadlineSet;
  bool? get deadlineSet => _$this._deadlineSet;
  set deadlineSet(bool? deadlineSet) => _$this._deadlineSet = deadlineSet;

  ListBuilder<DocumentReference<Object?>>? _assignedTo;
  ListBuilder<DocumentReference<Object?>> get assignedTo =>
      _$this._assignedTo ??= new ListBuilder<DocumentReference<Object?>>();
  set assignedTo(ListBuilder<DocumentReference<Object?>>? assignedTo) =>
      _$this._assignedTo = assignedTo;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  ListBuilder<DocumentReference<Object?>>? _pjVersions;
  ListBuilder<DocumentReference<Object?>> get pjVersions =>
      _$this._pjVersions ??= new ListBuilder<DocumentReference<Object?>>();
  set pjVersions(ListBuilder<DocumentReference<Object?>>? pjVersions) =>
      _$this._pjVersions = pjVersions;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProjectsRecordBuilder() {
    ProjectsRecord._initializeBuilder(this);
  }

  ProjectsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectName = $v.projectName;
      _description = $v.description;
      _numberTasks = $v.numberTasks;
      _completedTasks = $v.completedTasks;
      _lastEdited = $v.lastEdited;
      _timeCreated = $v.timeCreated;
      _ifCompleted = $v.ifCompleted;
      _type = $v.type;
      _projectImage = $v.projectImage;
      _deadline = $v.deadline;
      _artistName = $v.artistName;
      _deadlineSet = $v.deadlineSet;
      _assignedTo = $v.assignedTo?.toBuilder();
      _owner = $v.owner;
      _pjVersions = $v.pjVersions?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectsRecord;
  }

  @override
  void update(void Function(ProjectsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectsRecord build() => _build();

  _$ProjectsRecord _build() {
    _$ProjectsRecord _$result;
    try {
      _$result = _$v ??
          new _$ProjectsRecord._(
              projectName: projectName,
              description: description,
              numberTasks: numberTasks,
              completedTasks: completedTasks,
              lastEdited: lastEdited,
              timeCreated: timeCreated,
              ifCompleted: ifCompleted,
              type: type,
              projectImage: projectImage,
              deadline: deadline,
              artistName: artistName,
              deadlineSet: deadlineSet,
              assignedTo: _assignedTo?.build(),
              owner: owner,
              pjVersions: _pjVersions?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assignedTo';
        _assignedTo?.build();

        _$failedField = 'pjVersions';
        _pjVersions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
