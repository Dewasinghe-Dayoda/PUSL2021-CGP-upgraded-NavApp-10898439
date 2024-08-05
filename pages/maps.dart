
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer2 extends StatefulWidget {
  const WebViewContainer2({super.key});

  @override
  State<WebViewContainer2> createState() => _WebViewContainerState2();
}

class _WebViewContainerState2 extends State<WebViewContainer2> {


  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse('https://www.google.com/maps/place/NSBM+Green+University/@6.8207983,80.0402483,17.98z/data=!4m6!3m5!1s0x3ae2523b05555555:0x546c34cd99f6f488!8m2!3d6.8213291!4d80.0415729!16s%2Fg%2F11h1p1w53r?entry=ttu'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Find Locations"),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}