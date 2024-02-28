import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Route Page"),
      ),
    );
  }
}
