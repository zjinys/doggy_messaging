import 'dart:async';

import 'package:flutter/services.dart';

class DoggyMessaging {
  static const MethodChannel _channel =
      const MethodChannel('doggy_messaging');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
