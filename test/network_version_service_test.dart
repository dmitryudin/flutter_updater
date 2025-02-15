import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_updater/data/services/network_version_service.dart';
import 'package:flutter_updater/data/services/updates_info_model.dart';

import 'package:flutter_updater/updater_repository.dart';

void main() {
  test('getAvailibleAndroidVersion', () async {
    final networkVersionService =
        NetworkVersioniService(baseAddress: 'http://109.196.101.63:8000/api');
    UpdatesInfoModel updatesInfoModel =
        await networkVersionService.getAvailibleAndroidVersion();
  });
  test('getAvailibleIosVersion', () async {
    final networkVersionService =
        NetworkVersioniService(baseAddress: 'http://109.196.101.63:8000/api');
    UpdatesInfoModel updatesInfoModel =
        await networkVersionService.getAvailibleIosVersion();
  });
  test('getAvailibleMacOsVersion', () async {
    final networkVersionService =
        NetworkVersioniService(baseAddress: 'http://109.196.101.63:8000/api');
    UpdatesInfoModel updatesInfoModel =
        await networkVersionService.getAvailibleMacOsVersion();
  });
}
