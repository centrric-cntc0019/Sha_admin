import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@LazySingleton()
class CacheHelper {
  static late FlutterSecureStorage storage;

  Future<void> init() async {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: true,
        );
    if (Platform.isAndroid) {
      storage = FlutterSecureStorage(aOptions: getAndroidOptions());
    } else {
      storage = const FlutterSecureStorage();
    }
  }

  Future<String?> getCachedData({required String key}) async =>
      await storage.read(key: key);

  Future<void> cacheData({required String key, required String code}) async {
    await storage.write(key: key, value: code);
  }

  Future<void> clearData() async {
    await storage.deleteAll();
  }
}
