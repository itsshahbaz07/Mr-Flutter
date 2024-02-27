import 'package:flutter/material.dart';
import 'package:mr_flutter/common/responsive/desktop_scaffold.dart';
import 'package:mr_flutter/common/responsive/mobile_scaffold.dart';
import 'package:mr_flutter/common/responsive/responsive_layout.dart';
import 'package:mr_flutter/common/responsive/tablet_scaffold.dart';

class WebPage extends StatelessWidget {
  const WebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
