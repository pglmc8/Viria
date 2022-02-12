import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'box_record.g.dart';

abstract class BoxRecord implements Built<BoxRecord, BoxRecordBuilder> {
  static Serializer<BoxRecord> get serializer => _$boxRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Box')
  String get box;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BoxRecordBuilder builder) => builder..box = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Box');

  static Stream<BoxRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BoxRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BoxRecord._();
  factory BoxRecord([void Function(BoxRecordBuilder) updates]) = _$BoxRecord;

  static BoxRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBoxRecordData({
  String box,
  LatLng location,
}) =>
    serializers.toFirestore(
        BoxRecord.serializer,
        BoxRecord((b) => b
          ..box = box
          ..location = location));
