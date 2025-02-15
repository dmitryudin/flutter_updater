import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_updater/data/services/current_version_service.dart';

import 'package:flutter_updater/updater_repository.dart';

void main() {
  test('adds one to input values', () {
    CurrentVersionService currentVersionService = CurrentVersionService();
    print(currentVersionService.getCurrentAndroidVersion());
  });
}
