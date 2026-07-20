import 'package:local_auth/local_auth.dart';

import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_darwin/local_auth_darwin.dart';

class Biometric {
  final LocalAuthentication auth = LocalAuthentication();
  late List<BiometricType> availableBiometric;
  Future<(bool, String?)> authenticateUser() async {
    try {
      bool isAuthenticate = false;
      availableBiometric = await auth.getAvailableBiometrics();
      if (availableBiometric.isNotEmpty) {
        print("not empty");
      }

      if (availableBiometric.contains(BiometricType.face)) {
        print("UGLEE");
      }
      if (availableBiometric.contains(BiometricType.fingerprint)) {
        print("Finger style");
      }
      if (availableBiometric.contains(BiometricType.weak)) {
        print("weakling");
      }
      if (availableBiometric.contains(BiometricType.strong)) {
        print("Strong one tap");
      }
      print("available Biometric:: $availableBiometric");
      isAuthenticate = await auth.authenticate(
        localizedReason: "Please authenticate to proceed",
        biometricOnly: false,
      );
      // final bool didAuthenticate = await auth.authenticate(
      //   localizedReason: 'Please authenticate to show account balance',
      //   authMessages: const <AuthMessages>[
      //     AndroidAuthMessages(
      //       signInTitle: 'Oops! Biometric authentication required!',
      //       cancelButton: 'No thanks',
      //     ),
      //     IOSAuthMessages(cancelButton: 'No thanks'),
      //   ],
      // );

      return (isAuthenticate, null);
    } on LocalAuthException catch (e) {
      return (false, "$e");
    }
  }
  // Future<void> checkBiometric() async{
  //   final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
  //   final bool canAuthenticate = canAuthenticateWithBiometrics || await auth.isDeviceSupported();

  //   print("canAuthenticateWithBiometrics :: $canAuthenticateWithBiometrics");
  //   print("canAuthenticate :: $canAuthenticate");

  //   if (!canAuthenticate){
  //     print("uninstall this app you poor  bastard");
  //   }

  // }
}
