import 'package:cloud_firestore/cloud_firestore.dart';

class mapService {
  final Stream<QuerySnapshot> stops =
      FirebaseFirestore.instance.collection("stops").snapshots();
}
