import 'package:ai_chatbot/app/components/scroll/no_glow.dart';
import 'package:ai_chatbot/app/shared/constants.dart';
import 'package:flutter/material.dart';

class ScreenBase extends StatelessWidget {
  final Widget child;
  const ScreenBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: ScrollConfiguration(
            behavior: NoGlow(),
            child: SingleChildScrollView(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
