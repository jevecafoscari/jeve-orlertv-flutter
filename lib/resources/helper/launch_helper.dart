import 'package:url_launcher/url_launcher.dart';

class LaunchHelper {
  static void callPhone(final String phone) => launch("tel:$phone");

  static void sendMail(final String email) => launch("mailto:$email");
}
