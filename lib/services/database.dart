import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  // function to store userinfo to db
  Future addUserInfoToDb(
      String userId, Map<String, dynamic> userInfoMap) async {
    return await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .set(userInfoMap);
  }
}
