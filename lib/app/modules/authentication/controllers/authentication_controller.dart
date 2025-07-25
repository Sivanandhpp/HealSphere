import 'package:get/get.dart';
import 'package:healsphere/app/modules/authentication/views/otp_view.dart';

class AuthenticationController extends GetxController {
  void navigateToOtp() {
    Get.to(() => const OtpView());
  }
}
