import 'package:ai_chatbot/app/core/http/http_client.dart';
import 'package:ai_chatbot/app/core/loading/loading_singleton.dart';
import 'package:ai_chatbot/app/core/services/jwt_service.dart';
import 'package:ai_chatbot/app/core/services/shared_local_storage_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.addInstance(SharedLocalStorageService());
    i.addInstance(LoadingSingleton().getController());

    i.addLazySingleton(HttpClient.new);

    i.add(JwtService.new);
  }
}
