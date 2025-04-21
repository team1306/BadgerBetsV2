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

/// Returns a configured Appwrite [Account] instance.
/// Call this function whenever you need the account in your services.
Account getAppwriteAccount() {
  final client = getAppwriteClient();
  return Account(client);
}

/// Returns a configured Appwrite [Functions] instance.
/// Call this function whenever you need the functions in your services.

/// Returns a configured Appwrite [Database] instance.
/// Call this function whenever you need the database in your services.
Databases getAppwriteDatabase() {
  final client = getAppwriteClient();
  return Databases(client);
}
//Returns a configured Appwrite [Session] instance.
/// Call this function whenever you need the session in your services.
/*Future<Session> loginEmailPasswordSession(String email, String password) async {
  final account = getAppwriteAccount();
  final result = await account.createEmailPasswordSession(
      email: email,
      password: password,
  );
  return result;
}*/