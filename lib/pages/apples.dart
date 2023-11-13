import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ApplesPage extends StatelessWidget {
  const ApplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 194, 255),
        title: SvgPicture.asset(
          "assets/images/appsflyer-logo.svg",
          // ignore: deprecated_member_use
          color: Colors.white,
          width: 130,
        ),
      ),
      body: const Center(
        child: Text(
          'Apples page',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}