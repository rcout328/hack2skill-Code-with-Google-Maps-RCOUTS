import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "items" field.
  List<CartitemtypeStruct>? _items;
  List<CartitemtypeStruct> get items => _items ?? const [];
  bool hasItems() => _items != null;

  // "source" field.
  LatLng? _source;
  LatLng? get source => _source;
  bool hasSource() => _source != null;

  // "destination" field.
  LatLng? _destination;
  LatLng? get destination => _destination;
  bool hasDestination() => _destination != null;

  // "driverpostion" field.
  List<LatLng>? _driverpostion;
  List<LatLng> get driverpostion => _driverpostion ?? const [];
  bool hasDriverpostion() => _driverpostion != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _items = getStructList(
      snapshotData['items'],
      CartitemtypeStruct.fromMap,
    );
    _source = snapshotData['source'] as LatLng?;
    _destination = snapshotData['destination'] as LatLng?;
    _driverpostion = getDataList(snapshotData['driverpostion']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('order')
          : FirebaseFirestore.instance.collectionGroup('order');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('order').doc();

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
  DateTime? timestamp,
  String? status,
  LatLng? source,
  LatLng? destination,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timestamp': timestamp,
      'status': status,
      'source': source,
      'destination': destination,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
    const listEquality = ListEquality();
    return e1?.timestamp == e2?.timestamp &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.items, e2?.items) &&
        e1?.source == e2?.source &&
        e1?.destination == e2?.destination &&
        listEquality.equals(e1?.driverpostion, e2?.driverpostion);
  }

  @override
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.timestamp,
        e?.status,
        e?.items,
        e?.source,
        e?.destination,
        e?.driverpostion
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
