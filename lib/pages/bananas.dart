import 'package:flutter/material.dart';
import 'package:one_link_app/reuseable/fruitPage.dart';

class BananasPage extends StatelessWidget {
  const BananasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FruitPage(
      sub1Value: "20",
      fruit: "bananas",
    );
  }
}
