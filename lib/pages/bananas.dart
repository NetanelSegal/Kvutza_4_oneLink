import 'package:flutter/material.dart';
import 'package:one_link_app/reuseable/fruit_page.dart';

class BananasPage extends StatelessWidget {
  const BananasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FruitPage("assets/images/bananas.png", 'Bananas title');
  }
}
