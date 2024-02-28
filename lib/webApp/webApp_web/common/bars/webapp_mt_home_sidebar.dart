import 'package:flutter/material.dart';
import 'package:mr_flutter/app/routepage.dart';
import 'package:mr_flutter/webApp/webApp_web/common/widgets/listtile.dart';
import 'package:mr_flutter/webApp/webApp_web/common/widgets/webapp_home_basic_listtile.dart';
import 'package:mr_flutter/webApp/webApp_web/common/widgets/webapp_home_listtile_tabbar.dart';

class WebAppMTHomeSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Mr Flutter",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/home.png",
                color: Theme.of(context).colorScheme.inversePrimary,
                height: 20,
              ),
              title: Text(
                "G E T T I N G  S T A R T E D",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CustomListTile(
              title: "G E T  S T A R T E D",
              options: ["Option 1", "Option 2", "Option 3", "Option 4", "Option 5"],
            ),
            WebAppHomeListTileTabBar(),
          ],
        ),
      ),
    );
  }
}
