import 'package:financa/presenter/home/home_state.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../presenter/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => const HomePage(),
        ),
        Bind(
          (i) => HomePageState(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
      ];
}
