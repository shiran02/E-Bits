mixin Config {
  static bool get printLog => true;

  static bool get printNetLog => true;

  static bool get isDebugMode => true;

  static bool get disableAppUpdate => false;

  static int get apiTimeout => 40000;

  static String serverUrl = "https://restcountries.com/";
}
