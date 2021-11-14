import 'package:farmer_app/constant/api.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Back4App {
  static final _baseUrl = baseUrl;
  static Future<void> initPase() async {
    final keyApplicationId = ApplicationId;
    final keyClientKey = ClientKey;
    final keyParseServerUrl = ParseServerUrl;
    await Parse().initialize(keyApplicationId, keyParseServerUrl,
        clientKey: keyClientKey, autoSendSessionId: true);

    var todoFlutter = ParseObject('TodoFlutter')
      ..set(
          'message', 'Hey ! First meesage from Flutter. Parse is now conneted');
    await todoFlutter.save();
  }
}
