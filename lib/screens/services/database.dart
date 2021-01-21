import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:getmecar/models/gmc.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference getmecarCollection =
      Firestore.instance.collection('users');

  Future updateUserData(String name, String email, String phoneNum) async {
    return await getmecarCollection.document(uid).setData({
      'name': name,
      'email': email,
      'phoneNum': phoneNum,
    });
  }

  // gmc list from snapshot
  List<GMC> _gmcListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return GMC(
        name: doc.data['name'] ?? '',
        email: doc.data['email'] ?? '',
        phoneNum: doc.data['phoneNum'] ?? '',
      );
    }).toList(); //convert it into list
  }

  //get getmecar stream
  Stream<List<GMC>> get users {
    return getmecarCollection.snapshots().map(_gmcListFromSnapshot);
  }
}
