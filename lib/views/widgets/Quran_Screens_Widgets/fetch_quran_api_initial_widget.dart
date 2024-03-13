import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/QuranBlock/quran_api_bloc.dart';

class FetchQuranApiInitialWidget extends StatefulWidget {
  const FetchQuranApiInitialWidget({super.key});

  @override
  State<FetchQuranApiInitialWidget> createState() =>
      _FetchQuranApiInitialWidgetState();
}

class _FetchQuranApiInitialWidgetState
    extends State<FetchQuranApiInitialWidget> {
  double animationValue = 0;

  void startAnimation() {
    Future.delayed(
      const Duration(milliseconds: 100),
      () {
        setState(() {
          animationValue = 1;
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    void fetchData() {
      context.read<QuranApiBloc>().add((FetchAllSurahOfQuranApiEvent()));
    }

    // void fetchUrduTranslatedQuranData() {
    // context
    // .read<QuranApiBloc>()
    // .add(FetchAllSurahOfUrduTranslatedQuranApiEvent());
    // }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            fetchData();
            // fetchUrduTranslatedQuranData();
          },
          child: AnimatedScale(
            duration: const Duration(milliseconds: 300),
            scale: animationValue,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: animationValue,
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    )),
                alignment: Alignment.center,
                child: const Text(
                  "Fetch Quran Data",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        // const SizedBox(
        //   height: 20,
        // ),
        // InkWell(
        //   onTap: () {
        //     fetchUrduTranslatedQuranData();
        //   },
        //   child: AnimatedScale(
        //     duration: const Duration(milliseconds: 300),
        //     scale: animationValue,
        //     child: AnimatedOpacity(
        //       duration: const Duration(milliseconds: 300),
        //       opacity: animationValue,
        //       child: Container(
        //         width: 250,
        //         height: 70,
        //         decoration: BoxDecoration(
        //             color: Colors.white.withOpacity(0.15),
        //             borderRadius: BorderRadius.circular(20),
        //             border: Border.all(
        //               color: Colors.white,
        //               width: 1,
        //             )),
        //         alignment: Alignment.center,
        //         child: const Text(
        //           "Fetch Urdu Translated Quran Data",
        //           style: TextStyle(color: Colors.white),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
