import 'package:local_auth/local_auth.dart';
class Biometric{
  // ···
  final LocalAuthentication auth = LocalAuthentication();
  // ···
  Future<void> checkBiometric() async{
    final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
    final bool canAuthenticate = canAuthenticateWithBiometrics || await auth.isDeviceSupported();
    
    print("canAuthenticateWithBiometrics :: $canAuthenticateWithBiometrics");
    print("canAuthenticate :: $canAuthenticate");

    if (!canAuthenticate){
      print("uninstall this app you poor  bastard");
    }

    
  }
    
}

