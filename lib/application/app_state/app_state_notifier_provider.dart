import 'package:fluttertask/application/app_state/app_state.dart';
import 'package:fluttertask/infrastrucure/core/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_state_notifier.dart';

final appStateNotifierProvider =
    StateNotifierProvider<AppStateNotifier, AppState>((ref) {
  final localRepository = ref.watch(localRepositoryProvider);

  return AppStateNotifier(
    localRepository,
  );
});
