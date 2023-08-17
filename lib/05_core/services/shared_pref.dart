import 'dart:io';

import 'package:injectable/injectable.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class CacheHelper {
  static late SharedPreferences prefs;

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();

    // AndroidOptions getAndroidOptions() => const AndroidOptions(
    //       encryptedSharedPreferences: true,
    //     );
    // if (Platform.isAndroid) {
    //   storage = FlutterSecureStorage(aOptions: getAndroidOptions());
    // } else {
    //   storage = const FlutterSecureStorage();
    // }
  }

  Future<String?> getCachedData({required String key}) async =>
      await prefs.getString(key);

  Future<void> cacheData({required String key, required String code}) async {
    await prefs.setString(key, code);
  }

  Future<void> clearData() async {
    await prefs.clear();
  }
}
