import 'package:appsflyer_sdk/appsflyer_sdk.dart';

void appsFlyerSDKInitializer() {
  appsflyerSdk.initSdk(
    registerConversionDataCallback: true,
    registerOnDeepLinkingCallback: true,
  );
}

AppsFlyerOptions appsFlyerOptions = AppsFlyerOptions(
  afDevKey: "sQ84wpdxRTR4RMCaE9YqS4",
  appId: "id1292821412",
  showDebug: true,
);

AppsflyerSdk appsflyerSdk = AppsflyerSdk(appsFlyerOptions);

var conversionData;
DeepLink? deepLinkData;
