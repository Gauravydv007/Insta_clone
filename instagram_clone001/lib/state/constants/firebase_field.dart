import 'package:flutter/material.dart' show immutable;

@immutable

class FirebaseFieldName {
  static const userId = 'uid';   // these values show data in this form in the firebase
  static const postId = 'post_id';
  static const comment = 'comment';
  static const createdAt = 'created_at';
  static const date = 'date';
  static const displayName = 'display_name';
  static const email = 'email';
  const FirebaseFieldName._();
}