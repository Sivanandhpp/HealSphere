import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:healsphere/app/modules/authentication/views/login_view.dart';

import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  const AuthenticationView({super.key});
  @override
  Widget build(BuildContext context) {
    return const LoginView();
  }
}
