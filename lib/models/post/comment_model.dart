import 'package:cloud_firestore/cloud_firestore.dart';

typedef JsonMap = Map<String, dynamic>;

class Comment {
  final String? id;
  final String content;
  final String profilePic;
  final String username;
  final String toUser;
  final Timestamp datePublished;

  Comment({
    this.id,
    required this.content,
    required this.profilePic,
    required this.username,
    required this.toUser,
    required this.datePublished,
  });

  Comment.fromFirestore({
    required JsonMap snapshot,
    SnapshotOptions? options,
  })  : id = snapshot["id"],
        content = snapshot["content"],
        profilePic = snapshot["profilePic"],
        username = snapshot["username"],
        toUser = snapshot["toUser"],
        datePublished = snapshot["datePublished"];

  JsonMap toJson() => {
        "content": content,
        "profilePic": profilePic,
        "username": username,
        "toUser": toUser,
        "datePublished": datePublished,
      };
}
