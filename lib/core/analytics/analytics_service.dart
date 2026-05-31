import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics;

  AnalyticsService() : _analytics = FirebaseAnalytics.instance;

  Future<void> logScreenView(String screenName) async {
    await _analytics.logScreenView(screenName: screenName);
  }

  Future<void> logSearch(String searchTerm) async {
    await _analytics.logSearch(searchTerm: searchTerm);
  }

  Future<void> logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    await _analytics.logEvent(name: name, parameters: parameters);
  }

  Future<void> setUserId(String? userId) async {
    await _analytics.setUserId(id: userId);
  }
}

final analyticsServiceProvider = Provider<AnalyticsService>((ref) {
  return AnalyticsService();
});
