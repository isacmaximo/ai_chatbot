import 'package:ai_chatbot/app/core/loading/loading_singleton.dart';
import 'package:ai_chatbot/app/core/loading/loading_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  final loadingController = LoadingSingleton().getController();

  AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityProvider(
      child: MaterialApp.router(
        title: 'AI Chatbot',
        debugShowCheckedModeBanner: false,
        //supportedLocales: const [Locale('pt', 'BR')],
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        builder: EasyLoading.init(
          builder: (context, child) => Observer(
            builder: (context) => LoadingWrapper(
              isLoading: loadingController.isLoading,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
