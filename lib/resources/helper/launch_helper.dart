import 'package:url_launcher/url_launcher_string.dart';

class LaunchHelper {
  static void callPhone(final String phone) => launchUrlString("tel:$phone");

  static void sendMail(final String email) => launchUrlString("mailto:$email");
}
