import 'package:ai_chatbot/app/core/core_module.dart';
import 'package:ai_chatbot/app/modules/chat/pages/chat_page.dart';
import 'package:ai_chatbot/app/modules/chat/pages/controllers/chat_page_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void binds(Injector i) {
    i.addLazySingleton(ChatPageController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => ChatPage(),
    );
  }
}
