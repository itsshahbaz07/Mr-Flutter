import 'package:flutter/material.dart';

class WebAppHomeDesktop extends StatefulWidget {
  const WebAppHomeDesktop({super.key});

  @override
  State<WebAppHomeDesktop> createState() => _WebAppHomeDesktopState();
}

class _WebAppHomeDesktopState extends State<WebAppHomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
      ),
      body: Row(
        children: [
          Drawer(
            backgroundColor: Colors.grey[300],
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0), // Custom padding
                    child: Text(
                      "Mr Flutter",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/images/home.png",
                      color: Colors.grey[900],
                      height: 20,
                    ),
                    title: Text("G E T T I N G  S T A R T E D"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
