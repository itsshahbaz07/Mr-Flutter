import 'package:flutter/material.dart';

class AnimatedSideBarScreen extends StatefulWidget {
  const AnimatedSideBarScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedSideBarScreen> createState() => _AnimatedSideBarScreenState();
}

class _AnimatedSideBarScreenState extends State<AnimatedSideBarScreen> {
  bool isSidebarOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Row(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: isSidebarOpen ? 300 : 0,
            child: Drawer(
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
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSidebarOpen = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/home.png",
                              color: Colors.grey[900],
                              height: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "GETTING STARTED",
                              style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSidebarOpen = !isSidebarOpen;
              });
            },
            child: Container(
              width: 50,
              color: Colors.transparent,
              alignment: Alignment.center,
              child: Icon(
                isSidebarOpen ? Icons.arrow_forward : Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
