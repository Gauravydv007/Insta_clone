import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone001/state/auth/models/auth_result.dart';
import 'package:instagram_clone001/state/auth/providers/auth_state_provider.dart';

/// this provider is use to check is user logged in or not
final isLoggedInProvider = Provider<bool>((ref) {
  final authState = ref.watch(authStateProvider);
  return authState.result == AuthResult.success;
});