import 'package:flutter/material.dart';
import 'package:one_link_app/reuseable/fruit_page.dart';

class PeachesPage extends StatelessWidget {
  const PeachesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FruitPage("assets/images/peaches.png", 'Peaches title');
  }
}
