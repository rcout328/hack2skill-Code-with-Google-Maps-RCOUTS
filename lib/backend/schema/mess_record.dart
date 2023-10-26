import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessRecord extends FirestoreRecord {
  MessRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "sender" field.
  String? _sender;
  String get sender => _sender ?? '';
  bool hasSender() => _sender != null;

  // "ts" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  bool hasTs() => _ts != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _sender = snapshotData['sender'] as String?;
    _ts = snapshotData['ts'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('mess')
          : FirebaseFirestore.instance.collectionGroup('mess');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('mess').doc();

  static Stream<MessRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessRecord.fromSnapshot(s));

  static Future<MessRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessRecord.fromSnapshot(s));

  static MessRecord fromSnapshot(DocumentSnapshot snapshot) => MessRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessRecordData({
  String? name,
  String? sender,
  DateTime? ts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'sender': sender,
      'ts': ts,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessRecordDocumentEquality implements Equality<MessRecord> {
  const MessRecordDocumentEquality();

  @override
  bool equals(MessRecord? e1, MessRecord? e2) {
    return e1?.name == e2?.name && e1?.sender == e2?.sender && e1?.ts == e2?.ts;
  }

  @override
  int hash(MessRecord? e) =>
      const ListEquality().hash([e?.name, e?.sender, e?.ts]);

  @override
  bool isValidKey(Object? o) => o is MessRecord;
}
