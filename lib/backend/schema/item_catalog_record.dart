import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemCatalogRecord extends FirestoreRecord {
  ItemCatalogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itemCatalog');

  static Stream<ItemCatalogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemCatalogRecord.fromSnapshot(s));

  static Future<ItemCatalogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemCatalogRecord.fromSnapshot(s));

  static ItemCatalogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemCatalogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemCatalogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemCatalogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemCatalogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemCatalogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemCatalogRecordData({
  String? name,
  bool? isActive,
  DateTime? createdAt,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'isActive': isActive,
      'createdAt': createdAt,
      'createdBy': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemCatalogRecordDocumentEquality implements Equality<ItemCatalogRecord> {
  const ItemCatalogRecordDocumentEquality();

  @override
  bool equals(ItemCatalogRecord? e1, ItemCatalogRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.isActive == e2?.isActive &&
        e1?.createdAt == e2?.createdAt &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(ItemCatalogRecord? e) => const ListEquality()
      .hash([e?.name, e?.isActive, e?.createdAt, e?.createdBy]);

  @override
  bool isValidKey(Object? o) => o is ItemCatalogRecord;
}
