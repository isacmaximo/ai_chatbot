import 'package:ai_chatbot/app/core/core_module.dart';
import 'package:ai_chatbot/app/modules/chat/chat_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void routes(RouteManager r) {
    r.module(
      Modular.initialRoute,
      module: ChatModule(),
      transition: TransitionType.fadeIn,
    );
  }
}
