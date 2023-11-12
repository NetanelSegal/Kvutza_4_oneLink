import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './pages/apples.dart';
import './pages/bananas.dart';
import './pages/peaches.dart';

// 220d4e
const Color colorAFBlue = Color.fromARGB(255, 0, 194, 255);
const Color colorAFGreen = Color.fromARGB(255, 122, 209, 67);
const Color colorAFDark = Color.fromARGB(255, 19, 19, 19);
const EdgeInsets horizontalPagePadding = EdgeInsets.symmetric(horizontal: 20);

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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              "OneLink Simulator",
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.w700, height: 1),
            ),
          ),
          Padding(
            padding: horizontalPagePadding,
            child: Text(
              "Find the magic of deep link parameters",
              style: TextStyle(
                height: 1.2,
                fontSize: 25,
              ),
            ),
          ),
          MyImageButton("Apples", "assets/images/apples.jpg"),
          MyImageButton("Bananas", "assets/images/bananas.jpg"),
          MyImageButton("Peaches", "assets/images/peaches.jpg"),
        ],
      ),
    );
  }
}

class MyImageButton extends StatelessWidget {
  final String title, path;
  const MyImageButton(this.title, this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: horizontalPagePadding,
      child: TextButton(
        style: TextButton.styleFrom(
          animationDuration: Duration.zero,
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
        ),
        onPressed: () {
          print("object");
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset(
                path,
                height: 150,
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
