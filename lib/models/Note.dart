import 'package:firebase_database/firebase_database.dart';

class Note {
  String key;
  String note;
  String email;
  bool completed;
  String userId;

  Note(this.email, this.note, this.userId, this.completed);

  Note.fromSnapshot(DataSnapshot snapshot) :
        key = snapshot.key,
        userId = snapshot.value["userId"],
        email = snapshot.value["email"],
        note = snapshot.value["note"],
        completed = snapshot.value["completed"];

  toJson() {
    return {
      "userId": userId,
      "email" : email,
      "note": note,
      "completed": completed,
    };
  }
}