import 'dart:developer' as dev;

import '../../util/config/config.dart';

class LogUtils {
  LogUtils({
    required this.featureName,
    required this.printLog,
  });

  final String featureName;
  final bool printLog;

  void log(Object log) {
    if (printLog && Config.printLog) {
      dev.log("LOG :: $featureName :: $log");
    }
  }
}
