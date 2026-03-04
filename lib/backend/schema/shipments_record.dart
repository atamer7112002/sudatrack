import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShipmentsRecord extends FirestoreRecord {
  ShipmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "receiptNumber" field.
  String? _receiptNumber;
  String get receiptNumber => _receiptNumber ?? '';
  bool hasReceiptNumber() => _receiptNumber != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "tripId" field.
  DocumentReference? _tripId;
  DocumentReference? get tripId => _tripId;
  bool hasTripId() => _tripId != null;

  // "senderName" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "senderPhone" field.
  String? _senderPhone;
  String get senderPhone => _senderPhone ?? '';
  bool hasSenderPhone() => _senderPhone != null;

  // "receiverName" field.
  String? _receiverName;
  String get receiverName => _receiverName ?? '';
  bool hasReceiverName() => _receiverName != null;

  // "receiverPhone" field.
  String? _receiverPhone;
  String get receiverPhone => _receiverPhone ?? '';
  bool hasReceiverPhone() => _receiverPhone != null;

  // "cityId" field.
  DocumentReference? _cityId;
  DocumentReference? get cityId => _cityId;
  bool hasCityId() => _cityId != null;

  // "paymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "handlingType" field.
  String? _handlingType;
  String get handlingType => _handlingType ?? '';
  bool hasHandlingType() => _handlingType != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "smsSent" field.
  bool? _smsSent;
  bool get smsSent => _smsSent ?? false;
  bool hasSmsSent() => _smsSent != null;

  // "senderPhone2" field.
  String? _senderPhone2;
  String get senderPhone2 => _senderPhone2 ?? '';
  bool hasSenderPhone2() => _senderPhone2 != null;

  // "receiverPhone2" field.
  String? _receiverPhone2;
  String get receiverPhone2 => _receiverPhone2 ?? '';
  bool hasReceiverPhone2() => _receiverPhone2 != null;

  // "smsErrorMessage" field.
  String? _smsErrorMessage;
  String get smsErrorMessage => _smsErrorMessage ?? '';
  bool hasSmsErrorMessage() => _smsErrorMessage != null;

  // "smsStatus" field.
  String? _smsStatus;
  String get smsStatus => _smsStatus ?? '';
  bool hasSmsStatus() => _smsStatus != null;

  // "smsSentAt" field.
  DateTime? _smsSentAt;
  DateTime? get smsSentAt => _smsSentAt;
  bool hasSmsSentAt() => _smsSentAt != null;

  // "items" field.
  List<ShipmentItemStruct>? _items;
  List<ShipmentItemStruct> get items => _items ?? const [];
  bool hasItems() => _items != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "cityName" field.
  String? _cityName;
  String get cityName => _cityName ?? '';
  bool hasCityName() => _cityName != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _receiptNumber = snapshotData['receiptNumber'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _tripId = snapshotData['tripId'] as DocumentReference?;
    _senderName = snapshotData['senderName'] as String?;
    _senderPhone = snapshotData['senderPhone'] as String?;
    _receiverName = snapshotData['receiverName'] as String?;
    _receiverPhone = snapshotData['receiverPhone'] as String?;
    _cityId = snapshotData['cityId'] as DocumentReference?;
    _paymentMethod = snapshotData['paymentMethod'] as String?;
    _handlingType = snapshotData['handlingType'] as String?;
    _notes = snapshotData['notes'] as String?;
    _smsSent = snapshotData['smsSent'] as bool?;
    _senderPhone2 = snapshotData['senderPhone2'] as String?;
    _receiverPhone2 = snapshotData['receiverPhone2'] as String?;
    _smsErrorMessage = snapshotData['smsErrorMessage'] as String?;
    _smsStatus = snapshotData['smsStatus'] as String?;
    _smsSentAt = snapshotData['smsSentAt'] as DateTime?;
    _items = getStructList(
      snapshotData['items'],
      ShipmentItemStruct.fromMap,
    );
    _amount = castToType<double>(snapshotData['amount']);
    _cityName = snapshotData['cityName'] as String?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shipments');

  static Stream<ShipmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShipmentsRecord.fromSnapshot(s));

  static Future<ShipmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShipmentsRecord.fromSnapshot(s));

  static ShipmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShipmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShipmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShipmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShipmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShipmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShipmentsRecordData({
  String? receiptNumber,
  DateTime? createdAt,
  DocumentReference? tripId,
  String? senderName,
  String? senderPhone,
  String? receiverName,
  String? receiverPhone,
  DocumentReference? cityId,
  String? paymentMethod,
  String? handlingType,
  String? notes,
  bool? smsSent,
  String? senderPhone2,
  String? receiverPhone2,
  String? smsErrorMessage,
  String? smsStatus,
  DateTime? smsSentAt,
  double? amount,
  String? cityName,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'receiptNumber': receiptNumber,
      'createdAt': createdAt,
      'tripId': tripId,
      'senderName': senderName,
      'senderPhone': senderPhone,
      'receiverName': receiverName,
      'receiverPhone': receiverPhone,
      'cityId': cityId,
      'paymentMethod': paymentMethod,
      'handlingType': handlingType,
      'notes': notes,
      'smsSent': smsSent,
      'senderPhone2': senderPhone2,
      'receiverPhone2': receiverPhone2,
      'smsErrorMessage': smsErrorMessage,
      'smsStatus': smsStatus,
      'smsSentAt': smsSentAt,
      'amount': amount,
      'cityName': cityName,
      'createdBy': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShipmentsRecordDocumentEquality implements Equality<ShipmentsRecord> {
  const ShipmentsRecordDocumentEquality();

  @override
  bool equals(ShipmentsRecord? e1, ShipmentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.receiptNumber == e2?.receiptNumber &&
        e1?.createdAt == e2?.createdAt &&
        e1?.tripId == e2?.tripId &&
        e1?.senderName == e2?.senderName &&
        e1?.senderPhone == e2?.senderPhone &&
        e1?.receiverName == e2?.receiverName &&
        e1?.receiverPhone == e2?.receiverPhone &&
        e1?.cityId == e2?.cityId &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.handlingType == e2?.handlingType &&
        e1?.notes == e2?.notes &&
        e1?.smsSent == e2?.smsSent &&
        e1?.senderPhone2 == e2?.senderPhone2 &&
        e1?.receiverPhone2 == e2?.receiverPhone2 &&
        e1?.smsErrorMessage == e2?.smsErrorMessage &&
        e1?.smsStatus == e2?.smsStatus &&
        e1?.smsSentAt == e2?.smsSentAt &&
        listEquality.equals(e1?.items, e2?.items) &&
        e1?.amount == e2?.amount &&
        e1?.cityName == e2?.cityName &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(ShipmentsRecord? e) => const ListEquality().hash([
        e?.receiptNumber,
        e?.createdAt,
        e?.tripId,
        e?.senderName,
        e?.senderPhone,
        e?.receiverName,
        e?.receiverPhone,
        e?.cityId,
        e?.paymentMethod,
        e?.handlingType,
        e?.notes,
        e?.smsSent,
        e?.senderPhone2,
        e?.receiverPhone2,
        e?.smsErrorMessage,
        e?.smsStatus,
        e?.smsSentAt,
        e?.items,
        e?.amount,
        e?.cityName,
        e?.createdBy
      ]);

  @override
  bool isValidKey(Object? o) => o is ShipmentsRecord;
}
