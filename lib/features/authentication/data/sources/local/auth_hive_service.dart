import 'package:hive_flutter/hive_flutter.dart';
import 'package:spotify_clone/core/utils/utils.dart';
import 'package:spotify_clone/features/authentication/authentication.dart';

class AuthHiveService {
  late final Future<Box<AuthResponse>> _box;

  AuthHiveService() {
    _box = HiveUtil.openHiveBox<AuthResponse>('auth_response');
  }

  Future<void> saveUID({required String uid}) async {
    try {
      final box = await _box;
      final authResponse = AuthResponse(uid: uid);
      await box.put('uid', authResponse);
    } catch (e) {
      log.e("(Auth Hive Service) $e");
    }
  }

  Future<String?> getUID() async {
    try {
      final box = await _box;
      final authResponse = box.get('uid');
      return authResponse?.uid;
    } catch (e) {
      log.e("(Auth Hive Service) $e");
      return null;
    }
  }
}
