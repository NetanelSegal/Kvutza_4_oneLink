import 'package:appsflyer_sdk/appsflyer_sdk.dart';

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

AppsFlyerInviteLinkParams inviteLinkParamsApples = AppsFlyerInviteLinkParams(
    baseDeepLink: "onelink-basic-app.onelink.me",
    customParams: {"deep_link_value": "apples", "deep_link_sub1": "20"});

AppsFlyerInviteLinkParams inviteLinkParamsBananas = AppsFlyerInviteLinkParams(
    baseDeepLink: "onelink-basic-app.onelink.me",
    customParams: {"deep_link_value": "bananas", "deep_link_sub1": "15"});

AppsFlyerInviteLinkParams inviteLinkParamsPeaches = AppsFlyerInviteLinkParams(
    baseDeepLink: "onelink-basic-app.onelink.me",
    customParams: {"deep_link_value": "peaches", "deep_link_sub1": "30"});

var conversionData;
DeepLink? deepLinkData;
