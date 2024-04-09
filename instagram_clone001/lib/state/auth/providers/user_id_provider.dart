import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone001/state/auth/providers/auth_state_provider.dart';
import 'package:instagram_clone001/state/posts/typedefs/user_id.dart';

final userIdProvider =Provider<UserId?>(
  (ref) => ref.watch(authStateProvider).userId   /// check in authstate provider user id
);