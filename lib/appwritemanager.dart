import 'dart:collection';
import 'dart:ffi';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

class AppwriteManager{
  late Client _client;
  late Functions _functions;
  late Databases _databases;   
   
  AppwriteManager() {
    _client = Client()
      ..setEndpoint('https://nyc.cloud.appwrite.io/v1')
      ..setProject('badgerbets2')
      ..setSelfSigned(status: true); // For self-signed certificates, only use for development
    _functions = Functions(_client);
    _databases = Databases(_client);
  }

  Future<Document?> _getDocument(String databaseId, String collectionId, String documentId) async {
    try {
      Future<Document> document = _databases.getDocument(databaseId: databaseId, collectionId: collectionId, documentId: documentId);
      print("Document found: " + documentId);
      return document;
    } catch (identifier) {
      print("Error getting document $documentId: $identifier");
      return Future.error(Exception("Error getting document $documentId: $identifier"));
    }
  }

  Future<void> _updateDocument(String databaseId, String collectionId, String documentId, Map data) async {
    try {
      await _databases.updateDocument(databaseId: databaseId, collectionId: collectionId, documentId: documentId, data: data);
      print("Successfully got document $documentId");
    } catch (identifier) {
      print("Error updating document $documentId: $identifier");
      return Future.error(Exception("Error updating document $documentId: $identifier"));
    }
  }

  ///Set the value of a specified attribute.
  ///Returns nothing if the update is successful. Returns Future.error otherwise.
  Future<void> _updateAttribute(String databaseId, String collectionId, String documentId, String attributeId, var value) async {
    try {
      HashMap data = HashMap();
      data[attributeId] = value;
      await _updateDocument(databaseId, collectionId, documentId, data);
    } catch (identifier) {
      print("Error updating attribute $attributeId in document $documentId");
      return Future.error("Error updating attribute $attributeId in document $documentId");
    }
  }
}





/*
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
Functions getAppwriteFunctions() {
  final client = getAppwriteClient();
  return Functions(client);
}

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
*/