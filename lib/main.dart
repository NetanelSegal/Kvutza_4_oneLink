import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:one_link_app/pages/apples.dart';
import 'package:one_link_app/pages/bananas.dart';
import 'package:one_link_app/pages/peaches.dart';
import 'package:one_link_app/utils/varibles.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: "apples",
          builder: (context, state) => const ApplesPage(),
        ),
        GoRoute(
          path: "bananas",
          builder: (context, state) => const BananasPage(),
        ),
        GoRoute(
          path: "peaches",
          builder: (context, state) => const PeachesPage(),
        )
      ],
    ),
  ],
  onException: (_, GoRouterState state, GoRouter router) {
    router.go('/');
  },
);

AppsFlyerOptions appsFlyerOptions = AppsFlyerOptions(
  afDevKey: "sQ84wpdxRTR4RMCaE9YqS4",
  appId: "id1292821412",
  showDebug: true,
);

AppsflyerSdk appsflyerSdk = AppsflyerSdk(appsFlyerOptions);

void appsFlyerSDKInitializer(context) {
  appsflyerSdk.onInstallConversionData((res) {
    debugPrint("onInstallConversionData res: $res");
    debugPrint(res.payload);
  });

  appsflyerSdk.onDeepLinking((DeepLinkResult res) {
    switch (res.status) {
      case Status.FOUND:
        switch (res.deepLink?.deepLinkValue) {
          case "apples":
            GoRouter.of(context).push("/apples");
            break;
          case "bananas":
            GoRouter.of(context).push("/bananas");
            break;
          case "peaches":
            GoRouter.of(context).push("/peaches");
            break;
        }

        break;
      case Status.NOT_FOUND:
        print("deep link not found");
        break;
      case Status.ERROR:
        print("deep link error: ${res.error}");
        break;
      case Status.PARSE_ERROR:
        print("deep link status parsing error");
        break;
    }
  });
}

void main() {
  appsflyerSdk.initSdk(
    registerConversionDataCallback: true,
    registerOnDeepLinkingCallback: true,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
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
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => appsFlyerSDKInitializer(context));
    return Scaffold(
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
      body: const Padding(
        padding: horizontalPagePadding,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Gap(15),
                Text(
                  "OneLink \nSimulator",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 40, height: 1, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Find the magic of deep link parameters",
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Gap(15)
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Gap(5),
                  MyImageButton("Apples", "assets/images/apples.png", "/apples",
                      index: 0),
                  Gap(5),
                  MyImageButton(
                    "Bananas",
                    "assets/images/bananas.png",
                    "/bananas",
                    index: 1,
                  ),
                  Gap(5),
                  MyImageButton(
                    "Peaches",
                    "assets/images/peaches.png",
                    "/peaches",
                    index: 2,
                  ),
                  Gap(5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyImageButton extends StatelessWidget {
  final String title, imgPath, routePath;
  final int index;
  const MyImageButton(this.title, this.imgPath, this.routePath,
      {required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          animationDuration: Duration.zero,
          padding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
        ),
        onPressed: () {
          context.push(routePath);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset(
                imgPath,
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
      )
          .animate(delay: (300 + 300 * index).ms)
          .moveY(begin: 10, end: 0, duration: 600.ms)
          .fade(),
    );
  }
}
