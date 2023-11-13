import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:one_link_app/pages/apples.dart';
import 'package:one_link_app/pages/bananas.dart';
import 'package:one_link_app/pages/peaches.dart';

const Color colorAFBlue = Color.fromARGB(255, 0, 194, 255);
const Color colorAFGreen = Color.fromARGB(255, 122, 209, 67);
const Color colorAFDark = Color.fromARGB(255, 19, 19, 19);
const EdgeInsets horizontalPagePadding = EdgeInsets.symmetric(horizontal: 10);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'One Link AppsFlyer',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: colorAFDark,
          ),
        ),
        primaryColor: colorAFBlue,
        fontFamily: "Inter",
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const HomePage(),
        "/apples": (context) => const ApplesPage(),
        "/bananas": (context) => const BananasPage(),
        "/peaches": (context) => const PeachesPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: const Padding(
        padding: horizontalPagePadding,
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  "OneLink Simulator",
                  style: TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w700, height: 1.8),
                ),
                Text(
                  "Find the magic of deep link parameters",
                  style: TextStyle(
                    height: 1.1,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MyImageButton(
                  "Apples",
                  "assets/images/apples.jpg",
                  "/apples",
                ),
                MyImageButton(
                  "Bananas",
                  "assets/images/bananas.jpg",
                  "/bananas",
                ),
                MyImageButton(
                  "Peaches",
                  "assets/images/peaches.jpg",
                  "/peaches",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyImageButton extends StatelessWidget {
  final String title, imgPath, routePath;
  const MyImageButton(this.title, this.imgPath, this.routePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          animationDuration: Duration.zero,
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
        ),
        onPressed: () {
          Navigator.pushNamed(context, routePath);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset(
                imgPath,
                height: 170,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.fromLTRB(18, 5, 18, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: colorAFDark,
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
