import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String username;
  final String email;
  final DateTime createdAt;

  UserModel({
    required this.uid,
    required this.username,
    required this.email,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toMap() {
    return {
      "uuid": uid,
      "username": username,
      "email": email,
      "createdAt": Timestamp.fromDate(createdAt),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map["uid"] as String,
      username: map["username"] as String,
      email: map["email"] as String,
      createdAt: (map["createdAt"] as Timestamp).toDate(),
    );
  }
}
