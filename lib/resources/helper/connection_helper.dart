import 'dart:io';

class ConnectionHelper {
  static Future<bool> isConnected() async {
    bool value = false;

    try {
      final result = await InternetAddress.lookup("google.it");
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) value = true;
    } on SocketException catch (_) {
      value = false;
    }

    return value;
  }
}
