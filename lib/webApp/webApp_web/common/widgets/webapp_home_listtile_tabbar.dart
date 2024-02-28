import 'package:flutter/material.dart';
import 'package:mr_flutter/app/routepage.dart';
import 'package:mr_flutter/webApp/webApp_web/common/widgets/webapp_home_basic_listtile.dart';

class WebAppHomeListTileTabBar extends StatelessWidget {
  const WebAppHomeListTileTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WebAppHomeBasicListTile(
            iconImagePath: "assets/images/home.png",
            iconImageColor: Theme.of(context).colorScheme.inversePrimary,
            title: "Buttons",
            titleColor: Theme.of(context).colorScheme.inversePrimary,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoutePage()
                  ),
              );
            }
        ),
      ],
    );
  }
}
