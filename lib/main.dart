import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mr_flutter/common/themes/theme_provider.dart';
import 'package:mr_flutter/platform_selector.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(
      ChangeNotifierProvider(
        create: (context) =>ThemeProvider(),
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: selectPage(),
    );
  }
}
