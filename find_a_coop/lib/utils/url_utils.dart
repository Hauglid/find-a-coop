import 'package:url_launcher/url_launcher.dart';

class UrlUtils {
  const UrlUtils._();

  static Future<bool> mailto(String email) async {
    final String uri = 'mailto:$email';
    return openExternalBrowser(uri);
  }

  static Future<bool> call(String number) async {
    final String uri = 'tel:$number';
    final bool didLaunch = await openExternalBrowser(uri);
    return didLaunch;
  }

  static Future<bool> openExternalBrowser(String path) async {
    final url = Uri.parse(path);
    final bool didLaunch = await launchUrl(url, mode: LaunchMode.externalApplication);
    return didLaunch;
  }

  static Future<bool> openInternalBrowser(String path) async {
    final url = Uri.parse(path);
    return launchUrl(url, mode: LaunchMode.inAppWebView);
  }

  static Future<bool> openExternalApp(String path) async {
    final url = Uri.parse(path);
    return launchUrl(url, mode: LaunchMode.externalNonBrowserApplication);
  }

  static Future<bool> openMap(String? name, String? address) async {
    final String mapsUrl = Uri.encodeFull('https://www.google.com/maps/search/?api=1&query=$name, $address');
    return openExternalBrowser(mapsUrl);
  }
}
