// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'templates_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TemplatesRecord> _$templatesRecordSerializer =
    new _$TemplatesRecordSerializer();

class _$TemplatesRecordSerializer
    implements StructuredSerializer<TemplatesRecord> {
  @override
  final Iterable<Type> types = const [TemplatesRecord, _$TemplatesRecord];
  @override
  final String wireName = 'TemplatesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TemplatesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.seller;
    if (value != null) {
      result
        ..add('seller')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.templateName;
    if (value != null) {
      result
        ..add('template_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  TemplatesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TemplatesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'seller':
          result.seller = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'template_name':
          result.templateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$TemplatesRecord extends TemplatesRecord {
  @override
  final String? seller;
  @override
  final String? templateName;
  @override
  final double? rating;
  @override
  final String? image;
  @override
  final String? price;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TemplatesRecord([void Function(TemplatesRecordBuilder)? updates]) =>
      (new TemplatesRecordBuilder()..update(updates))._build();

  _$TemplatesRecord._(
      {this.seller,
      this.templateName,
      this.rating,
      this.image,
      this.price,
      this.ffRef})
      : super._();

  @override
  TemplatesRecord rebuild(void Function(TemplatesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplatesRecordBuilder toBuilder() =>
      new TemplatesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplatesRecord &&
        seller == other.seller &&
        templateName == other.templateName &&
        rating == other.rating &&
        image == other.image &&
        price == other.price &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, seller.hashCode), templateName.hashCode),
                    rating.hashCode),
                image.hashCode),
            price.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplatesRecord')
          ..add('seller', seller)
          ..add('templateName', templateName)
          ..add('rating', rating)
          ..add('image', image)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TemplatesRecordBuilder
    implements Builder<TemplatesRecord, TemplatesRecordBuilder> {
  _$TemplatesRecord? _$v;

  String? _seller;
  String? get seller => _$this._seller;
  set seller(String? seller) => _$this._seller = seller;

  String? _templateName;
  String? get templateName => _$this._templateName;
  set templateName(String? templateName) => _$this._templateName = templateName;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TemplatesRecordBuilder() {
    TemplatesRecord._initializeBuilder(this);
  }

  TemplatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seller = $v.seller;
      _templateName = $v.templateName;
      _rating = $v.rating;
      _image = $v.image;
      _price = $v.price;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplatesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemplatesRecord;
  }

  @override
  void update(void Function(TemplatesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplatesRecord build() => _build();

  _$TemplatesRecord _build() {
    final _$result = _$v ??
        new _$TemplatesRecord._(
            seller: seller,
            templateName: templateName,
            rating: rating,
            image: image,
            price: price,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
