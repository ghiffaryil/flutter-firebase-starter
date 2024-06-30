import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_app_installations/firebase_app_installations.dart';

class FirebaseUtil {
  Future<String> getFirebaseToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    String? token = await messaging.getToken();
    return token.toString();
  }

  Future<String> getFirebaseInstanceId() async {
    String instanceId = await FirebaseInstallations.instance.getId();
    return instanceId;
  }

  Future<String> getFirebaseInstanceToken() async {
    String instanceToken = await FirebaseInstallations.instance.getToken(true);
    return instanceToken;
  }
}
