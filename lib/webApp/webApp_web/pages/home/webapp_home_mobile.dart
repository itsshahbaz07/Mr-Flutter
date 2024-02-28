import 'package:flutter/material.dart';
import 'package:mr_flutter/webApp/webApp_web/common/bars/webapp_mt_home_sidebar.dart';
import 'package:mr_flutter/webApp/webApp_web/common/bars/webapp_mt_home_topbar.dart';

class WebAppHomeMobile extends StatefulWidget {
  const WebAppHomeMobile({super.key});

  @override
  State<WebAppHomeMobile> createState() => _WebAppHomeMobileState();
}

class _WebAppHomeMobileState extends State<WebAppHomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: WebAppMTHomeTopBar(),
      drawer: WebAppMTHomeSidebar(),
    );
  }
}
