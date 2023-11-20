import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:one_link_app/main.dart';

class FruitPage extends StatelessWidget {
  final String imgPath, title;
  static const String url = "https://onelink-basic-app.onelink.me";

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
        backgroundColor: colorAFBlue,
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
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(colorAFBlue)),
                onPressed: () {
                  Clipboard.setData(
                    ClipboardData(
                        text: GoRouterState.of(context)
                                .uri
                                .toString()
                                .contains(url)
                            ? GoRouterState.of(context).uri.toString()
                            : url + GoRouterState.of(context).uri.toString()),
                  );
                },
                icon: const Icon(
                  Icons.copy,
                  size: 24.0,
                  color: colorAFDark,
                ),
                label: const Text(
                  'copy link',
                  style: TextStyle(
                    fontSize: 20,
                    color: colorAFDark,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
