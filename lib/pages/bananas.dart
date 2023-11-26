import 'package:flutter/material.dart';
import 'package:one_link_app/reuseable/fruitPage.dart';
import 'package:one_link_app/utils/appsFlyerSDK.dart';

class BananasPage extends StatelessWidget {
  const BananasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FruitPage("assets/images/bananas.png", 'Bananas title',
        linkParams: inviteLinkParamsBananas);
  }
}
