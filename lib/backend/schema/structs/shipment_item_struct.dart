// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShipmentItemStruct extends FFFirebaseStruct {
  ShipmentItemStruct({
    String? itemId,
    String? description,
    int? quantity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _itemId = itemId,
        _description = description,
        _quantity = quantity,
        super(firestoreUtilData);

  // "itemId" field.
  String? _itemId;
  String get itemId => _itemId ?? '';
  set itemId(String? val) => _itemId = val;

  bool hasItemId() => _itemId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  static ShipmentItemStruct fromMap(Map<String, dynamic> data) =>
      ShipmentItemStruct(
        itemId: data['itemId'] as String?,
        description: data['description'] as String?,
        quantity: castToType<int>(data['quantity']),
      );

  static ShipmentItemStruct? maybeFromMap(dynamic data) => data is Map
      ? ShipmentItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'itemId': _itemId,
        'description': _description,
        'quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'itemId': serializeParam(
          _itemId,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
      }.withoutNulls;

  static ShipmentItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShipmentItemStruct(
        itemId: deserializeParam(
          data['itemId'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ShipmentItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ShipmentItemStruct &&
        itemId == other.itemId &&
        description == other.description &&
        quantity == other.quantity;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([itemId, description, quantity]);
}

ShipmentItemStruct createShipmentItemStruct({
  String? itemId,
  String? description,
  int? quantity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ShipmentItemStruct(
      itemId: itemId,
      description: description,
      quantity: quantity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ShipmentItemStruct? updateShipmentItemStruct(
  ShipmentItemStruct? shipmentItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    shipmentItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addShipmentItemStructData(
  Map<String, dynamic> firestoreData,
  ShipmentItemStruct? shipmentItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (shipmentItem == null) {
    return;
  }
  if (shipmentItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && shipmentItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final shipmentItemData =
      getShipmentItemFirestoreData(shipmentItem, forFieldValue);
  final nestedData =
      shipmentItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = shipmentItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getShipmentItemFirestoreData(
  ShipmentItemStruct? shipmentItem, [
  bool forFieldValue = false,
]) {
  if (shipmentItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(shipmentItem.toMap());

  // Add any Firestore field values
  shipmentItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getShipmentItemListFirestoreData(
  List<ShipmentItemStruct>? shipmentItems,
) =>
    shipmentItems?.map((e) => getShipmentItemFirestoreData(e, true)).toList() ??
    [];
