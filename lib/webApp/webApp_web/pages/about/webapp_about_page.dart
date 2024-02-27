import 'package:flutter/material.dart';
import 'package:mr_flutter/webApp/responsive/responsive_layout.dart';
import 'package:mr_flutter/webApp/webApp_web/pages/about/webapp_about_desktop.dart';
import 'package:mr_flutter/webApp/webApp_web/pages/about/webapp_about_mobile.dart';
import 'package:mr_flutter/webApp/webApp_web/pages/about/webapp_about_tablet.dart';

class WebAppAboutPage extends StatelessWidget {
  const WebAppAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileScaffold: WebAppAboutMobile(),
        tabletScaffold: WebAppAboutTablet(),
        desktopScaffold: WebAppAboutDesktop(),
    );
  }
}
