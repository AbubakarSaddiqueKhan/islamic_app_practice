import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';

class FetchUserCurrentLocationInitialWidget extends StatelessWidget {
  const FetchUserCurrentLocationInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void fetchUserCurrentLocation() async {
      context
          .read<UserCurrentLocationBloc>()
          .add(FetchUserCurrentLocationEvent(context: context));
    }

    return InkWell(
      onTap: fetchUserCurrentLocation,
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
          "Fetch User Location",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
