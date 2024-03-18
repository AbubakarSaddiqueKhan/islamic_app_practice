import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FetchUserCurrentLocationLoadingWidget extends StatelessWidget {
  const FetchUserCurrentLocationLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return LottieBuilder.asset(
      "assets/animations/loading.json",
      width: width * 0.5,
      height: height * 0.5,
      fit: BoxFit.contain,
    );
  }
}
