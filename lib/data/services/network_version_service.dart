// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter_updater/data/services/updates_info_model.dart';

class NetworkVersioniService {
  late Dio dio;
  String baseAddress;
  NetworkVersioniService({
    required this.baseAddress,
  }) {
    dio = Dio();
  }

  Future<UpdatesInfoModel> getAvailibleAndroidVersion() async {
    Response response = await dio.get('$baseAddress/android/get_version');
    return UpdatesInfoModel.fromJson(response.data);
  }

  Future<UpdatesInfoModel> getAvailibleIosVersion() async {
    Response response = await dio.get('$baseAddress/ios/get_version');
    return UpdatesInfoModel.fromJson(response.data);
  }

  Future<UpdatesInfoModel> getAvailibleMacOsVersion() async {
    Response response = await dio.get('$baseAddress/mac_os/get_version');
    return UpdatesInfoModel.fromJson(response.data);
  }

  Future<UpdatesInfoModel> getAvailibleWinowsVersion() async {
    Response response = await dio.get('$baseAddress/windows/get_version');
    return UpdatesInfoModel.fromJson(response.data);
  }

  Future<UpdatesInfoModel> getAvailibleLinuxVersion() async {
    Response response = await dio.get('$baseAddress/linux/get_version');
    return UpdatesInfoModel.fromJson(response.data);
  }
}
