import 'package:flutter/material.dart';
import 'package:one_link_app/reuseable/fruitPage.dart';
import 'package:one_link_app/utils/appsFlyerSDK.dart';

class ApplesPage extends StatelessWidget {
  const ApplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FruitPage("assets/images/apples.png", 'Apples title',
        linkParams: inviteLinkParamsApples);
  }
}
