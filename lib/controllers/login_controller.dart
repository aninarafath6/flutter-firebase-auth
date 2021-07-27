// ignore: file_names
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

// ignore: public_member_api_docs
class LoginController extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  // ignore: public_member_api_docs
  Rx<GoogleSignInAccount?> googleAccount = Rx<GoogleSignInAccount?>(null);

  // ignore: public_member_api_docs
  Future<GoogleSignInAccount?> login() async {
    googleAccount.value = await _googleSignIn.signIn();
  }

  // ignore: public_member_api_docs
  Future<GoogleSignInAccount?> logout() async {
    googleAccount.value = await _googleSignIn.signOut();
  }
}
