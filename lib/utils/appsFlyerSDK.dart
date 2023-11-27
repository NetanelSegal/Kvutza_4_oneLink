import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:flutter/material.dart';

void appsFlyerSDKInitializer() {
  appsflyerSdk.initSdk(
    registerConversionDataCallback: true,
    registerOnDeepLinkingCallback: true,
  );
}

AppsFlyerOptions appsFlyerOptions = AppsFlyerOptions(
  appInviteOneLink: "H5hv",
  afDevKey: "sQ84wpdxRTR4RMCaE9YqS4",
  appId: "id1292821412",
  showDebug: true,
);

AppsflyerSdk appsflyerSdk = AppsflyerSdk(appsFlyerOptions);

// var conversionData;
DeepLink? deepLinkData;

class ConvDataProvider extends ChangeNotifier {
  var convData;

  ConvDataProvider({this.convData = "No Conversion data"});

  setConvData({required convData}) async {
    this.convData = convData;
    notifyListeners();
  }
}
