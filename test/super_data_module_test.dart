import 'package:flutter_test/flutter_test.dart';
import 'package:super_data_module/super_data_module.dart';
import 'package:super_data_module/super_data_module_platform_interface.dart';
import 'package:super_data_module/super_data_module_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSuperDataModulePlatform
    with MockPlatformInterfaceMixin
    implements SuperDataModulePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SuperDataModulePlatform initialPlatform = SuperDataModulePlatform.instance;

  test('$MethodChannelSuperDataModule is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSuperDataModule>());
  });

  test('getPlatformVersion', () async {
    SuperDataModule superDataModulePlugin = SuperDataModule();
    MockSuperDataModulePlatform fakePlatform = MockSuperDataModulePlatform();
    SuperDataModulePlatform.instance = fakePlatform;

    expect(await superDataModulePlugin.getPlatformVersion(), '42');
  });
}
