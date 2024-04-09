import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone001/state/auth/models/auth_state.dart';
import 'package:instagram_clone001/state/notifie/auth_state_notifier.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier,AuthState >(
  (_) =>  AuthStateNotifier(),
  );