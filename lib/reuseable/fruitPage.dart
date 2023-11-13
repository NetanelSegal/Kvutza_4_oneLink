import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FruitPage extends StatelessWidget {
  final String imgPath, title;

  const FruitPage(this.imgPath, this.title, {super.key});

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
