import 'package:ai_chatbot/app/components/base/screen_base.dart';
import 'package:ai_chatbot/app/modules/chat/pages/controllers/chat_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ChatPage extends StatelessWidget {
  final _controller = Modular.get<ChatPageController>();
  ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: Column(
        children: [
          Center(
            child: Text(
              'Tela Inicial',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
