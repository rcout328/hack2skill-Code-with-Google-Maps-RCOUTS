// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartitemtypeStruct extends FFFirebaseStruct {
  CartitemtypeStruct({
    int? quantity,
    String? specialinstrction,
    DocumentReference? menured,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantity = quantity,
        _specialinstrction = specialinstrction,
        _menured = menured,
        super(firestoreUtilData);

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "Specialinstrction" field.
  String? _specialinstrction;
  String get specialinstrction => _specialinstrction ?? '';
  set specialinstrction(String? val) => _specialinstrction = val;
  bool hasSpecialinstrction() => _specialinstrction != null;

  // "menured" field.
  DocumentReference? _menured;
  DocumentReference? get menured => _menured;
  set menured(DocumentReference? val) => _menured = val;
  bool hasMenured() => _menured != null;

  static CartitemtypeStruct fromMap(Map<String, dynamic> data) =>
      CartitemtypeStruct(
        quantity: castToType<int>(data['quantity']),
        specialinstrction: data['Specialinstrction'] as String?,
        menured: data['menured'] as DocumentReference?,
      );

  static CartitemtypeStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CartitemtypeStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'quantity': _quantity,
        'Specialinstrction': _specialinstrction,
        'menured': _menured,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'Specialinstrction': serializeParam(
          _specialinstrction,
          ParamType.String,
        ),
        'menured': serializeParam(
          _menured,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static CartitemtypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartitemtypeStruct(
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        specialinstrction: deserializeParam(
          data['Specialinstrction'],
          ParamType.String,
          false,
        ),
        menured: deserializeParam(
          data['menured'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['menu'],
        ),
      );

  @override
  String toString() => 'CartitemtypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartitemtypeStruct &&
        quantity == other.quantity &&
        specialinstrction == other.specialinstrction &&
        menured == other.menured;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([quantity, specialinstrction, menured]);
}

CartitemtypeStruct createCartitemtypeStruct({
  int? quantity,
  String? specialinstrction,
  DocumentReference? menured,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartitemtypeStruct(
      quantity: quantity,
      specialinstrction: specialinstrction,
      menured: menured,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartitemtypeStruct? updateCartitemtypeStruct(
  CartitemtypeStruct? cartitemtype, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartitemtype
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartitemtypeStructData(
  Map<String, dynamic> firestoreData,
  CartitemtypeStruct? cartitemtype,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartitemtype == null) {
    return;
  }
  if (cartitemtype.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartitemtype.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartitemtypeData =
      getCartitemtypeFirestoreData(cartitemtype, forFieldValue);
  final nestedData =
      cartitemtypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartitemtype.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartitemtypeFirestoreData(
  CartitemtypeStruct? cartitemtype, [
  bool forFieldValue = false,
]) {
  if (cartitemtype == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartitemtype.toMap());

  // Add any Firestore field values
  cartitemtype.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartitemtypeListFirestoreData(
  List<CartitemtypeStruct>? cartitemtypes,
) =>
    cartitemtypes?.map((e) => getCartitemtypeFirestoreData(e, true)).toList() ??
    [];
