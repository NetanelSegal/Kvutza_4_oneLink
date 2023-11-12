import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
        backgroundColor: Colors.black,
        title: SvgPicture.asset(
          "assets/images/appsflyer-logo.svg",
          // ignore: deprecated_member_use
          color: Colors.white,
          width: 130,
        ),
      ),
      body: MyImageButton("Apples", "assets/images/apples.jpg"),
    );
  }
}

class MyImageButton extends StatelessWidget {
  final String title, path;
  const MyImageButton(this.title, this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path);
  }
}

class ApplesPage extends StatelessWidget {
  const ApplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("title"),
      ),
      body: const Center(
        child: Text(
          'You have pushed the button this many times:',
        ),
      ),
    );
  }
}

class BananasPage extends StatelessWidget {
  const BananasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("title"),
      ),
      body: const Center(
        child: Text(
          'You have pushed the button this many times:',
        ),
      ),
    );
  }
}

class PeachesPage extends StatelessWidget {
  const PeachesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("title"),
      ),
      body: const Center(
        child: Text(
          'You have pushed the button this many times:',
        ),
      ),
    );
  }
}
