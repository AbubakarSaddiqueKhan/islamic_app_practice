import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Asma_Ul_Husnaa_Bloc/asma_ul_husnaa_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Asma_Ul_Husnaa_Page_Widgets/asma_ul_husna_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Asma_Ul_Husnaa_Page_Widgets/imporatnce_of_asma_ul_husna_in_the_light_of_quran_and_hadith.dart';

class AsmaUlHusnaMainPageDesign extends StatefulWidget {
  const AsmaUlHusnaMainPageDesign({super.key});
  static const pageName = "asmaUlHusnaPage/";

  @override
  State<AsmaUlHusnaMainPageDesign> createState() =>
      _AsmaUlHusnaMainPageDesignState();
}

class _AsmaUlHusnaMainPageDesignState extends State<AsmaUlHusnaMainPageDesign> {
  @override
  void didChangeDependencies() {
    context.read<AsmaUlHusnaaBloc>().add(FetchAsmaUlHusnaa());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/dark.jpg"),
                fit: BoxFit.cover)),
        child: BlocBuilder<AsmaUlHusnaaBloc, AsmaUlHusnaaState>(
          builder: (context, state) {
            if (state is AsmaUlHusnaaInitialState) {
              return const Text("Waiting");
            } else if (state is AsmaUlHusnaaLoadingState) {
              return const Text("Loading");
            } else if (state is AsmaUlHusnaaLoadedState) {
              return ListView.builder(
                itemCount: state.allAsmaUlHusnaasDataList.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return const ImportanceOfAsmaAlHusnaInTheLightOfQuranAndHadithWidgetsList();
                  } else {
                    return AsmaUlHusnaWidgets(
                      asmaUlHusnaData:
                          state.allAsmaUlHusnaasDataList[index - 1],
                    );
                  }
                },
              );
            } else {
              return Text("Error State");
            }
          },
        ),
      ),
    );
  }
}
