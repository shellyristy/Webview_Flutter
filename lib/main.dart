// import 'dart:io';                            // Add this import.
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'src/web_view_stack.dart';
import 'src/navigation_controls.dart';
import 'src/menu.dart';                         //Add this

void main() {
  runApp(
    const MaterialApp(
      home: WebViewApp(),
    ),
  );
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  final controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
        actions: [
          NavigationControls(controller: controller),
          Menu(controller: controller), //Add this line
        ],
        // ... to here.
      ),
      body: WebViewStack(controller: controller), // Add the controller argument
    );
  }
}


//       ),
//       body: const WebViewStack(),   // Replace the WebView widget with WebViewStack
//     );
//   }
// }
// class _WebViewAppState extends State<WebViewApp> {
//   // Add from here ...
//   @override
//   void initState() {
//     if (Platform.isAndroid) {
//       WebView.platform = SurfaceAndroidWebView();
//     }
//     super.initState();
//   }
//   // ... to here.

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter WebView'),
//       ),
//       body: const WebView(
//         initialUrl: 'https://flutter.dev',
//       ),
//     );
//   }
// }