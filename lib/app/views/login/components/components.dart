import 'dart:developer';

import 'package:cherry_toast/cherry_toast.dart';

import '../../../../header.dart';
import '../../../helper/firebase/auth_helper.dart';
import '../../../helper/firebase/cloudfirestore.dart';
import '../../signup/model/signupmodel.dart';

TextEditingController loginEmailController = TextEditingController();
TextEditingController passwordEmailController = TextEditingController();

//Todo login button function
LoginButton(
    {required String email,
    required String password,
    required BuildContext context}) async {
  SignUpModel signUpModel = SignUpModel(email: email, password: password);
  Map<String, dynamic> res =
      await AuthHelper.authHelper.login(signUpModel: signUpModel);
  if (res['error'] != null) {
    return CherryToast.error(
      title: const Text("Login Failed"),
    ).show(context);
  } else {
    Get.offAllNamed('/home');
    FireStoreHelper.fireStoreHelper.addUser();
  }
}

//todo signin with google
google() async {
  Map<String, dynamic> res = await AuthHelper.authHelper.signInWithGoogle();
  if (res['error'] != null) {
    return log('login failed');
  } else {
    Get.offAllNamed('/home');
    FireStoreHelper.fireStoreHelper.addUser();
  }
}
