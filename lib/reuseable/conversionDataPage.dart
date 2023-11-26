import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:one_link_app/utils/varibles.dart';
import 'package:one_link_app/utils/appsFlyerSDK.dart';

class ConversionDataPage extends StatelessWidget {
  const ConversionDataPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: conversionData != null
          ? Padding(
              padding: horizontalPagePadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      const Text(
                        "af_message: ",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(conversionData["payload"]["af_message"].toString()),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "af_status: ",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(conversionData["payload"]["af_status"].toString()),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "install_time: ",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(
                          conversionData["payload"]["install_time"].toString()),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "is_first_launch: ",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      Text(conversionData["payload"]["is_first_launch"]
                          .toString()),
                    ],
                  ),
                ],
              ),
            )
          : const Text("No convesion data"),
    );
  }
}
