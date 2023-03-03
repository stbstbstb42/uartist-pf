// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_selling_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BestSellingRecord> _$bestSellingRecordSerializer =
    new _$BestSellingRecordSerializer();

class _$BestSellingRecordSerializer
    implements StructuredSerializer<BestSellingRecord> {
  @override
  final Iterable<Type> types = const [BestSellingRecord, _$BestSellingRecord];
  @override
  final String wireName = 'BestSellingRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BestSellingRecord object,
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
  BestSellingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BestSellingRecordBuilder();

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

class _$BestSellingRecord extends BestSellingRecord {
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

  factory _$BestSellingRecord(
          [void Function(BestSellingRecordBuilder)? updates]) =>
      (new BestSellingRecordBuilder()..update(updates))._build();

  _$BestSellingRecord._(
      {this.seller,
      this.templateName,
      this.rating,
      this.image,
      this.price,
      this.ffRef})
      : super._();

  @override
  BestSellingRecord rebuild(void Function(BestSellingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BestSellingRecordBuilder toBuilder() =>
      new BestSellingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BestSellingRecord &&
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
    return (newBuiltValueToStringHelper(r'BestSellingRecord')
          ..add('seller', seller)
          ..add('templateName', templateName)
          ..add('rating', rating)
          ..add('image', image)
          ..add('price', price)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BestSellingRecordBuilder
    implements Builder<BestSellingRecord, BestSellingRecordBuilder> {
  _$BestSellingRecord? _$v;

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

  BestSellingRecordBuilder() {
    BestSellingRecord._initializeBuilder(this);
  }

  BestSellingRecordBuilder get _$this {
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
  void replace(BestSellingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BestSellingRecord;
  }

  @override
  void update(void Function(BestSellingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BestSellingRecord build() => _build();

  _$BestSellingRecord _build() {
    final _$result = _$v ??
        new _$BestSellingRecord._(
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
