import 'package:flutter/material.dart';

class WebAppHomeDesktop extends StatefulWidget {
  const WebAppHomeDesktop({Key? key}) : super(key: key);

  @override
  State<WebAppHomeDesktop> createState() => _WebAppHomeDesktopState();
}

class _WebAppHomeDesktopState extends State<WebAppHomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
    );
  }
}
