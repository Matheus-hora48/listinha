import 'package:cadrninho/main.dart';
import 'package:cadrninho/src/home/home_page.dart';
import 'package:cadrninho/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ligthTheme,
      darkTheme: darkTheme,
      home: const HomePage(),
    );
  }
}
