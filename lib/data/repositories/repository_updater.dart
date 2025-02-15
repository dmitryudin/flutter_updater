// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  Future<UpdaterModel> checkUpdates() async {
    throw UnimplementedError();
  }
}
