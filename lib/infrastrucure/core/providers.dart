import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../application/app_state/app_state_notifier_provider.dart';
import '../../domain/core/i_local_repository.dart';
import '../../util/config/config.dart';
import 'api_helper.dart';
import 'local_repository.dart';

final localStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return const FlutterSecureStorage();
});

final localRepositoryProvider = Provider<ILocalRepository>(
    (ref) => LocalRepository(ref.watch(localStorageProvider)));

final dioProvider = Provider<Dio>((ref) {
  final dioClient = Dio(
    BaseOptions(
        baseUrl: Config.serverUrl,
        connectTimeout: Duration(milliseconds: Config.apiTimeout),
        receiveTimeout: Duration(milliseconds: Config.apiTimeout),
        followRedirects: false,
        validateStatus: (status) {
          if (status != null) {
            return status < 500;
          }
          return true;
        }),
  );

  var interceptor = LogInterceptor(responseBody: false);

  if (Config.isDebugMode &&
      Config.printNetLog &&
      !dioClient.interceptors.contains(interceptor)) {
    dioClient.interceptors.add(interceptor);
  }
  if (!(Config.isDebugMode && Config.printNetLog) &&
      dioClient.interceptors.contains(interceptor)) {
    dioClient.interceptors.remove(interceptor);
  }

  return dioClient;
});

final apiHelperProvider = Provider<ApiHelper>((ref) {
  final dio = ref.watch(dioProvider);
  final appState = ref.watch(appStateNotifierProvider);

  return ApiHelper(
    ref,
    dio: dio,
    appState: appState,
  );
});

final authTokenProvider = Provider<String>((ref) {
  final authToken = ref.watch(appStateNotifierProvider.select((value) {
    value.accessToken;
  }));

  return authToken;
});
