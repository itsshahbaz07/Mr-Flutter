import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        leading: Builder(builder: (context) => IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
          icon: Image.asset(
            "assets/images/menu.png",
            color: Theme.of(context).colorScheme.inversePrimary,
            height: 30,
          ),
        ),
        ),
      ),
      drawer: Drawer(
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
    );
  }
}
