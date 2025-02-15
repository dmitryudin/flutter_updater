import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'updates_info_model.freezed.dart';

part 'updates_info_model.g.dart';

@freezed
class UpdatesInfoModel with _$UpdatesInfoModel {
  factory UpdatesInfoModel(
      {required String availible_version,
      required String url_for_update}) = _UpdatesInfoModel;

  factory UpdatesInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UpdatesInfoModelFromJson(json);
}
