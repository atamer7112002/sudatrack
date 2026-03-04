import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShipmentTransfersRecord extends FirestoreRecord {
  ShipmentTransfersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "shipmentId" field.
  DocumentReference? _shipmentId;
  DocumentReference? get shipmentId => _shipmentId;
  bool hasShipmentId() => _shipmentId != null;

  // "fromTripId" field.
  DocumentReference? _fromTripId;
  DocumentReference? get fromTripId => _fromTripId;
  bool hasFromTripId() => _fromTripId != null;

  // "toTripId" field.
  DocumentReference? _toTripId;
  DocumentReference? get toTripId => _toTripId;
  bool hasToTripId() => _toTripId != null;

  // "transferredAt" field.
  DateTime? _transferredAt;
  DateTime? get transferredAt => _transferredAt;
  bool hasTransferredAt() => _transferredAt != null;

  // "transferredBy" field.
  DocumentReference? _transferredBy;
  DocumentReference? get transferredBy => _transferredBy;
  bool hasTransferredBy() => _transferredBy != null;

  void _initializeFields() {
    _shipmentId = snapshotData['shipmentId'] as DocumentReference?;
    _fromTripId = snapshotData['fromTripId'] as DocumentReference?;
    _toTripId = snapshotData['toTripId'] as DocumentReference?;
    _transferredAt = snapshotData['transferredAt'] as DateTime?;
    _transferredBy = snapshotData['transferredBy'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shipmentTransfers');

  static Stream<ShipmentTransfersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShipmentTransfersRecord.fromSnapshot(s));

  static Future<ShipmentTransfersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ShipmentTransfersRecord.fromSnapshot(s));

  static ShipmentTransfersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShipmentTransfersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShipmentTransfersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShipmentTransfersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShipmentTransfersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShipmentTransfersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShipmentTransfersRecordData({
  DocumentReference? shipmentId,
  DocumentReference? fromTripId,
  DocumentReference? toTripId,
  DateTime? transferredAt,
  DocumentReference? transferredBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'shipmentId': shipmentId,
      'fromTripId': fromTripId,
      'toTripId': toTripId,
      'transferredAt': transferredAt,
      'transferredBy': transferredBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShipmentTransfersRecordDocumentEquality
    implements Equality<ShipmentTransfersRecord> {
  const ShipmentTransfersRecordDocumentEquality();

  @override
  bool equals(ShipmentTransfersRecord? e1, ShipmentTransfersRecord? e2) {
    return e1?.shipmentId == e2?.shipmentId &&
        e1?.fromTripId == e2?.fromTripId &&
        e1?.toTripId == e2?.toTripId &&
        e1?.transferredAt == e2?.transferredAt &&
        e1?.transferredBy == e2?.transferredBy;
  }

  @override
  int hash(ShipmentTransfersRecord? e) => const ListEquality().hash([
        e?.shipmentId,
        e?.fromTripId,
        e?.toTripId,
        e?.transferredAt,
        e?.transferredBy
      ]);

  @override
  bool isValidKey(Object? o) => o is ShipmentTransfersRecord;
}
