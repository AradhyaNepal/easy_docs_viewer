library easy_docs_viewer;

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EasyDocsViewer extends StatefulWidget {
  final String url;

  const EasyDocsViewer({
    super.key,
    required this.url,
  });

  @override
  State<EasyDocsViewer> createState() => _EasyDocsViewerState();
}

class _EasyDocsViewerState extends State<EasyDocsViewer> {
  bool firstTimeLoading = true;
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            if (firstTimeLoading) {
              setState(() {
                firstTimeLoading = false;
              });
            }
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse("https://docs.google.com/gview?embedded=true&url=${widget.url}"));
  }

  @override
  Widget build(BuildContext context) {
    if(firstTimeLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return WebViewWidget(
      controller: controller,
    );
  }
}
