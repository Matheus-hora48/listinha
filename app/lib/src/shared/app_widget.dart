import 'package:cadrninho/main.dart';
import 'package:cadrninho/src/configuration/configuration_page.dart';
import 'package:cadrninho/src/home/edit_task_board_page.dart';
import 'package:cadrninho/src/home/home_page.dart';
import 'package:cadrninho/src/shared/store/app_store.dart';
import 'package:cadrninho/src/shared/store/app_store.dart';
import 'package:cadrninho/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');
    final appStore = context.watch<AppStore>(
      (store) => store.themeMode,
    );

    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: appStore.themeMode.value,
      theme: ligthTheme,
      darkTheme: darkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
