import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FetchUserCurrentLocationErrorWidget extends StatelessWidget {
  const FetchUserCurrentLocationErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return LottieBuilder.asset(
      "assets/animations/error.json",
      width: width * 0.7,
      height: height * 0.7,
      fit: BoxFit.contain,
    );
  }
}
