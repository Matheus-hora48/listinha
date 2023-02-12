import 'package:cadrninho/main.dart';
import 'package:cadrninho/src/configuration/configuration_page.dart';
import 'package:cadrninho/src/home/edit_task_board_page.dart';
import 'package:cadrninho/src/home/home_page.dart';
import 'package:cadrninho/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ligthTheme,
      darkTheme: darkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
