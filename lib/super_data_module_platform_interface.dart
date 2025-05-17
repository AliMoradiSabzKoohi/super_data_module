import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'super_data_module_method_channel.dart';

abstract class SuperDataModulePlatform extends PlatformInterface {
  /// Constructs a SuperDataModulePlatform.
  SuperDataModulePlatform() : super(token: _token);

  static final Object _token = Object();

  static SuperDataModulePlatform _instance = MethodChannelSuperDataModule();

  /// The default instance of [SuperDataModulePlatform] to use.
  ///
  /// Defaults to [MethodChannelSuperDataModule].
  static SuperDataModulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SuperDataModulePlatform] when
  /// they register themselves.
  static set instance(SuperDataModulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
