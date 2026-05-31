import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage _storage;

  SecureStorage() : _storage = const FlutterSecureStorage();

  Future<void> write(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }

  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }

  Future<void> saveAccessToken(String token) async {
    await write('access_token', token);
  }

  Future<String?> getAccessToken() async {
    return await read('access_token');
  }

  Future<void> saveRefreshToken(String token) async {
    await write('refresh_token', token);
  }

  Future<String?> getRefreshToken() async {
    return await read('refresh_token');
  }

  Future<void> clearTokens() async {
    await delete('access_token');
    await delete('refresh_token');
  }
}

final secureStorageProvider = Provider<SecureStorage>((ref) {
  final storage = SecureStorage();
  ref.onDispose(() {});
  return storage;
});
