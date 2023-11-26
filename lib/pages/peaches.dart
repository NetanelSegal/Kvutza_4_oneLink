import 'package:flutter/material.dart';
import 'package:one_link_app/reuseable/fruitPage.dart';
import 'package:one_link_app/utils/appsFlyerSDK.dart';

class PeachesPage extends StatelessWidget {
  const PeachesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FruitPage(
      "assets/images/peaches.png",
      'Peaches title',
      linkParams: inviteLinkParamsPeaches,
    );
  }
}
