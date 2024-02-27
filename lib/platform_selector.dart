import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'web/web_page.dart';
import 'app/app_page.dart';

Widget selectPage() {
  if (kIsWeb) {
    return WebPage();
  } else {
    return AppPage();
  }
}
