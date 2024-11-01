import 'package:flutter/material.dart';

class LoadingWrapper extends StatelessWidget {
  final Widget? child;
  final bool isLoading;

  const LoadingWrapper({
    super.key,
    this.child,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child ?? Container(),
        if (isLoading)
          const Opacity(
            opacity: 0.7,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black,
            ),
          ),
        if (isLoading)
          const Center(
            child: CircularProgressIndicator(
              color: Colors.purple,
              strokeWidth: 1.5,
            ),
          ),
      ],
    );
  }
}
