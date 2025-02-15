// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

import 'package:flutter_updater/data/services/current_version_service.dart';
import 'package:flutter_updater/data/services/network_version_service.dart';
import 'package:flutter_updater/data/services/updates_info_model.dart';

class RepositoryConfiguration {}

class UpdaterModel {
  String currentVersion;
  String availibleVersion;
  String urlForUpdate;
  bool isAvailibleUpdate;
  UpdaterModel({
    required this.currentVersion,
    required this.availibleVersion,
    required this.urlForUpdate,
    required this.isAvailibleUpdate,
  });
}

class UpdateRepository {
  bool _isNewerVersion(
      {required String currentVersion, required String latestVersion}) {
    List<String> _currentSubversions = currentVersion.split('.');
    List<String> _latestSubversions = latestVersion.split('.');
    if (int.parse(_currentSubversions[0]) < int.parse(_latestSubversions[0])) {
      return true;
    }
    if (int.parse(_currentSubversions[1]) < int.parse(_latestSubversions[1])) {
      return true;
    }
    if (int.parse(_currentSubversions[2]) < int.parse(_latestSubversions[2])) {
      return true;
    }

    return false;
  }

  String baseAdress;
  UpdateRepository({
    required this.baseAdress,
  });

  Future<UpdaterModel> checkUpdates() async {
    final networkVersionService =
        NetworkVersioniService(baseAddress: baseAdress);
    if (Platform.isAndroid) {
      UpdatesInfoModel updatesInfoModel =
          await networkVersionService.getAvailibleAndroidVersion();
      String currentVersion =
          await CurrentVersionService().getCurrentAndroidVersion();
      String latestVersion = updatesInfoModel.availible_version;
      bool isNewerVersion = _isNewerVersion(
          currentVersion: currentVersion, latestVersion: latestVersion);
      return UpdaterModel(
          currentVersion: currentVersion,
          availibleVersion: latestVersion,
          urlForUpdate: updatesInfoModel.url_for_update,
          isAvailibleUpdate: isNewerVersion);
    }
    if (Platform.isIOS) {
      UpdatesInfoModel updatesInfoModel =
          await networkVersionService.getAvailibleIosVersion();
      String currentVersion =
          await CurrentVersionService().getCurrentIosVersion();
      String latestVersion = updatesInfoModel.availible_version;
      bool isNewerVersion = _isNewerVersion(
          currentVersion: currentVersion, latestVersion: latestVersion);
      return UpdaterModel(
          currentVersion: currentVersion,
          availibleVersion: latestVersion,
          urlForUpdate: updatesInfoModel.url_for_update,
          isAvailibleUpdate: isNewerVersion);
    }
    if (Platform.isMacOS) {
      UpdatesInfoModel updatesInfoModel =
          await networkVersionService.getAvailibleMacOsVersion();
      String currentVersion =
          await CurrentVersionService().getCurrentMacOsVersion();
      String latestVersion = updatesInfoModel.availible_version;
      bool isNewerVersion = _isNewerVersion(
          currentVersion: currentVersion, latestVersion: latestVersion);
      return UpdaterModel(
          currentVersion: currentVersion,
          availibleVersion: latestVersion,
          urlForUpdate: updatesInfoModel.url_for_update,
          isAvailibleUpdate: isNewerVersion);
    }

    return UpdaterModel(
        currentVersion: '',
        availibleVersion: '',
        urlForUpdate: '',
        isAvailibleUpdate: true);
  }

  UpdateRepository copyWith({
    String? baseAdress,
  }) {
    return UpdateRepository(
      baseAdress: baseAdress ?? this.baseAdress,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseAdress': baseAdress,
    };
  }

  factory UpdateRepository.fromMap(Map<String, dynamic> map) {
    return UpdateRepository(
      baseAdress: map['baseAdress'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UpdateRepository.fromJson(String source) =>
      UpdateRepository.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UpdateRepository(baseAdress: $baseAdress)';

  @override
  bool operator ==(covariant UpdateRepository other) {
    if (identical(this, other)) return true;

    return other.baseAdress == baseAdress;
  }

  @override
  int get hashCode => baseAdress.hashCode;
}
