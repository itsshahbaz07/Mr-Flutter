import 'package:flutter/material.dart';
import 'package:mr_flutter/webApp/webApp_web/common/bars/webapp_mt_home_sidebar.dart';
import 'package:mr_flutter/webApp/webApp_web/common/bars/webapp_mt_home_topbar.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: WebAppMTHomeTopBar(),
      drawer: WebAppMTHomeSidebar(),
    );
  }
}
