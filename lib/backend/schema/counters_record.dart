import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountersRecord extends FirestoreRecord {
  CountersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "shipmentCounter" field.
  int? _shipmentCounter;
  int get shipmentCounter => _shipmentCounter ?? 0;
  bool hasShipmentCounter() => _shipmentCounter != null;

  void _initializeFields() {
    _shipmentCounter = castToType<int>(snapshotData['shipmentCounter']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('counters');

  static Stream<CountersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountersRecord.fromSnapshot(s));

  static Future<CountersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountersRecord.fromSnapshot(s));

  static CountersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountersRecordData({
  int? shipmentCounter,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'shipmentCounter': shipmentCounter,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountersRecordDocumentEquality implements Equality<CountersRecord> {
  const CountersRecordDocumentEquality();

  @override
  bool equals(CountersRecord? e1, CountersRecord? e2) {
    return e1?.shipmentCounter == e2?.shipmentCounter;
  }

  @override
  int hash(CountersRecord? e) =>
      const ListEquality().hash([e?.shipmentCounter]);

  @override
  bool isValidKey(Object? o) => o is CountersRecord;
}
