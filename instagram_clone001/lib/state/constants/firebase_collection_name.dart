import 'package:flutter/material.dart' show immutable;

@immutable

class FirebaseCollectionName {
  static const thubnails = 'thumbnails';   // these values show data in this form in the firebase
  static const comments = 'comments';
  static const likes = 'likes';
  static const posts = 'posts';
  static const users = 'users';
  const FirebaseCollectionName._();
}