import 'package:flutter/material.dart';
import 'package:one_link_app/reuseable/fruitPage.dart';

class PeachesPage extends StatelessWidget {
  const PeachesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FruitPage(sub1Value: "45", fruit: "peaches");
  }
}
