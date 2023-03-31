import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtil {
  static openBrowserUrl({required Uri uri}) async {
    if (!await launchUrl(uri)) {
      throw 'Couldn\'t launch URL: $uri';
    }
  }
}
