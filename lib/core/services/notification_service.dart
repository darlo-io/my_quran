import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {
  final FirebaseMessaging _messaging;

  NotificationService() : _messaging = FirebaseMessaging.instance;

  Future<void> initialize() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      final token = await _messaging.getToken();
      // token can be sent to backend for targeted push
    }

    FirebaseMessaging.onMessage.listen(_handleForeground);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleOpened);
    FirebaseMessaging.onBackgroundMessage(_handleBackground);
  }

  void _handleForeground(RemoteMessage message) {
    // Handle foreground notification
  }

  void _handleOpened(RemoteMessage message) {
    // Navigate based on message.data
  }

  @pragma('vm:entry-point')
  static Future<void> _handleBackground(RemoteMessage message) async {
    // Handle background notification
  }

  Future<String?> getToken() => _messaging.getToken();

  Future<void> subscribeToTopic(String topic) =>
      _messaging.subscribeToTopic(topic);

  Future<void> unsubscribeFromTopic(String topic) =>
      _messaging.unsubscribeFromTopic(topic);
}
