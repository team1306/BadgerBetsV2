import 'package:appwrite/appwrite.dart';

/// Returns a configured Appwrite [Client] instance.
/// Call this function whenever you need the client in your services.
Client getAppwriteClient() {
  final client = Client()
    ..setEndpoint('https://nyc.cloud.appwrite.io/v1')
    ..setProject('badgerbets2')
    ..setSelfSigned(status: true); // For self-signed certificates, only use for development
  return client;
}

