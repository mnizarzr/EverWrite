import 'package:appwrite/appwrite.dart';
import 'package:everwrite/constants/common/appwrite_config.dart';

class Appwrite {
  static final Appwrite instance = Appwrite._internal();

  late final Client client;

  factory Appwrite._() {
    return instance;
  }

  Appwrite._internal() {
    client = Client()
        .setEndpoint(appwriteEndpoint)
        .setProject(appwriteProjectId)
        .setSelfSigned(status: true);
  }
}
