import 'dart:js';

import 'package:cadrninho/src/configuration/configuration_page.dart';
import 'package:cadrninho/src/home/home_module.dart';
import 'package:cadrninho/src/home/home_page.dart';
import 'package:cadrninho/src/shared/services/realm/realm_config.dart';
import 'package:cadrninho/src/shared/store/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.instance(Realm(config)),
        Bind.factory((ConfigurationService) => ConfigurationService),
        Bind.singleton((i) => AppStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ChildRoute('/', child: (context, args) => const ConfigurationPage()),
      ];
}
