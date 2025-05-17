import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'super_data_module_platform_interface.dart';

/// An implementation of [SuperDataModulePlatform] that uses method channels.
class MethodChannelSuperDataModule extends SuperDataModulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('super_data_module');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
