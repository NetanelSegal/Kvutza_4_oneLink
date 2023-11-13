import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:one_link_app/main.dart';

class FruitPage extends StatelessWidget {
  final String imgPath, title;

  const FruitPage(this.imgPath, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 80,
          color: colorAFBlue,
          child: TextButton(
            onPressed: () => print("Show convertion data..."),
            child: const Text(
              "Show convertion data",
              style: TextStyle(
                fontSize: 24,
                color: colorAFDark,
              ),
            ),
          ),
        ),
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
        body: Column(
          children: [
            Center(
              child: Image.asset(imgPath),
            ),
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ));
  }
}
