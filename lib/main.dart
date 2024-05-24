import 'package:advance_flutter_ch3/3_2_chrome/provider/google_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '3_1_connectivity/view/connectivity_screen.dart';
import '3_2_chrome/view/google_page.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => GoogleProvider(),child: MyApp(),));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Googlepage(),
    );
  }
}

