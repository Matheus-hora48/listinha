import 'package:cadrninho/src/shared/app_module.dart';
import 'package:cadrninho/src/shared/app_widget.dart';
import 'package:cadrninho/src/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
