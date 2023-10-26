import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Chat1Record extends FirestoreRecord {
  Chat1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat1');

  static Stream<Chat1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Chat1Record.fromSnapshot(s));

  static Future<Chat1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Chat1Record.fromSnapshot(s));

  static Chat1Record fromSnapshot(DocumentSnapshot snapshot) => Chat1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Chat1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Chat1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Chat1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Chat1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChat1RecordData({
  String? name,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class Chat1RecordDocumentEquality implements Equality<Chat1Record> {
  const Chat1RecordDocumentEquality();

  @override
  bool equals(Chat1Record? e1, Chat1Record? e2) {
    return e1?.name == e2?.name && e1?.image == e2?.image;
  }

  @override
  int hash(Chat1Record? e) => const ListEquality().hash([e?.name, e?.image]);

  @override
  bool isValidKey(Object? o) => o is Chat1Record;
}
