import 'package:flutter/material.dart';
import 'package:mr_flutter/webApp/responsive/responsive_layout.dart';
import 'package:mr_flutter/webApp/webApp_web/pages/home/webapp_home_desktop.dart';
import 'package:mr_flutter/webApp/webApp_web/pages/home/webapp_home_mobile.dart';
import 'package:mr_flutter/webApp/webApp_web/pages/home/webapp_home_tablet.dart';


class WebAppHomePage extends StatelessWidget {
  const WebAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: WebAppHomeMobile(),
        tabletScaffold: WebAppHomeTablet(),
        desktopScaffold: WebAppHomeDesktop(),
    );
  }
}
