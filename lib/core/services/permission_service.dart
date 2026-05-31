import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  Future<bool> requestNotificationPermission() async {
    final status = await Permission.notification.request();
    return status.isGranted;
  }

  Future<bool> requestStoragePermission() async {
    final status = await Permission.storage.request();
    return status.isGranted;
  }

  Future<bool> requestMediaPermission() async {
    if (await Permission.audio.status.isGranted) return true;
    final status = await Permission.audio.request();
    return status.isGranted;
  }

  Future<bool> hasNotificationPermission() async {
    return await Permission.notification.isGranted;
  }

  Future<bool> hasStoragePermission() async {
    return await Permission.storage.isGranted;
  }
}
