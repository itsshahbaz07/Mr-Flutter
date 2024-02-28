import 'package:flutter/material.dart';
import 'package:mr_flutter/webApp/webApp_web/common/bars/webapp_mt_home_sidebar.dart';
import 'package:mr_flutter/webApp/webApp_web/common/bars/webapp_mt_home_topbar.dart';

class WebAppHomeTablet extends StatefulWidget {
  const WebAppHomeTablet({super.key});

  @override
  State<WebAppHomeTablet> createState() => _WebAppHomeTabletState();
}

class _WebAppHomeTabletState extends State<WebAppHomeTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: WebAppMTHomeTopBar(),
      drawer: WebAppMTHomeSidebar(),
    );
  }
}
