import 'dart:collection' show MapView;
import 'package:flutter/material.dart';
import 'package:instagram_clone001/state/constants/firebase_field.dart';
import 'package:instagram_clone001/state/posts/typedefs/user_id.dart';

@immutable
class UserInfoPayload extends MapView<String, String> {
  UserInfoPayload({
    required UserId userId,
    required String? displayName,
    required String? email,
  }) : super({
          FirebaseFieldName.userId: userId,
          FirebaseFieldName.displayName: displayName ?? '',
          FirebaseFieldName.email: email ?? '',
        });
}
