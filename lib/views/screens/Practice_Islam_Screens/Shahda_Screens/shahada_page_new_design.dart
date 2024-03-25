import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Shahada_Screen_Widgets/shahada_page_tabs_top_widgets.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Shahada_Screen_Widgets/shahda_page_tab_bar_view_widgets.dart';

class ShahdaPageDesign extends StatefulWidget {
  const ShahdaPageDesign({super.key});

  @override
  State<ShahdaPageDesign> createState() => _ShahdaPageDesignState();
}

late final TabController _tabController;

class _ShahdaPageDesignState extends State<ShahdaPageDesign>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/dark.jpg",
                  ),
                  fit: BoxFit.cover)),
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      )),
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  physics: const BouncingScrollPhysics(),
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  tabs: shahdaPageTabs,
                  controller: _tabController,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: shahdaPageTabViews,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
