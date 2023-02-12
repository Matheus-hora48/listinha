import 'dart:js';

import 'package:cadrninho/src/home/edit_task_board_page.dart';
import 'package:cadrninho/src/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/edit',
            child: (context, args) => const EditTaskBoardPage()),
      ];
}
