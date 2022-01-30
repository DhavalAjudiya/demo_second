import 'package:demo2/const/const.dart';

class Auth {
  static Future ragitration({String? email, String? pass}) async {
    try {
      await kFirebaseAuth.createUserWithEmailAndPassword(
          email: email!, password: pass!);
    } catch (e) {
      print(e);
    }
  }
}
