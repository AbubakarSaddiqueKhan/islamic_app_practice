import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/Home_Page_Widgets/Home_Page_Categories/home_page_asma_ul_husna_custom_button.dart';

class HomePageCategoriesWidget extends StatelessWidget {
  const HomePageCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: width,
          height: height * 0.2,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              children: [
                Expanded(
                    flex: 48,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          Expanded(
                              child: Icon(
                            Icons.menu_book_outlined,
                            color: Colors.white,
                            size: 30,
                          )),
                          Expanded(
                            child: Text(
                              "Holy Quran",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.lime,
                                  fontFamily: "Archivo"),
                            ),
                          ),
                        ],
                      ),
                    )),
                const Spacer(flex: 2),
                Expanded(
                    flex: 48,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          Expanded(
                              child: Icon(
                            Icons.menu_book_outlined,
                            color: Colors.white,
                            size: 30,
                          )),
                          Expanded(
                            child: Text(
                              "The Hadith",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.lime,
                                  fontFamily: "Archivo"),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          child: HomePageAsmaUlHusnaaCustomButton(),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: width,
          height: height * 0.2,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              children: [
                Expanded(
                    flex: 48,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          Expanded(
                              child: Icon(
                            Icons.menu_book_outlined,
                            color: Colors.white,
                            size: 30,
                          )),
                          Expanded(
                            child: Text(
                              "Holy Quran",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.lime,
                                  fontFamily: "Archivo"),
                            ),
                          ),
                        ],
                      ),
                    )),
                const Spacer(
                  flex: 2,
                ),
                Expanded(
                    flex: 48,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      alignment: Alignment.center,
                      child: const Column(
                        children: [
                          Expanded(
                              child: Icon(
                            Icons.menu_book_outlined,
                            color: Colors.white,
                            size: 30,
                          )),
                          Expanded(
                            child: Text(
                              "The Hadith",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.lime,
                                  fontFamily: "Archivo"),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}




// Old design 

/**
 * 
 * 
 * // SizedBox(
        //   child: InkWell(
        //     onTap: () {},
        //     child: Padding(
        //       padding: const EdgeInsets.only(left: 5, right: 5),
        //       child: Container(
        //           width: width,
        //           height: height * 0.2,
        //           decoration: BoxDecoration(
        //               color: Colors.white.withOpacity(0.15),
        //               borderRadius: BorderRadius.circular(10),
        //               border: Border.all(
        //                 color: Colors.white,
        //                 width: 1,
        //               )),
        //           alignment: Alignment.center,
        //           child: const Row(
        //             children: [
        //               Expanded(
        //                 child: Text(
        //                   "Holy Quran",
        //                   textAlign: TextAlign.center,
        //                   style: TextStyle(
        //                       fontSize: 18,
        //                       color: Colors.lime,
        //                       fontFamily: "Archivo"),
        //                 ),
        //               ),
        //               VerticalDivider(
        //                 indent: 0,
        //                 endIndent: 0.1,
        //               ),
        //               Expanded(
        //                 child: Text(
        //                   "القرآن کریم",
        //                   textDirection: TextDirection.ltr,
        //                   textAlign: TextAlign.center,
        //                   style: TextStyle(
        //                       fontSize: 25,
        //                       color: Colors.greenAccent,
        //                       fontFamily: "Amiri"),
        //                 ),
        //               ),
        //             ],
        //           )),
        //     ),
        //   ),
        // ),




        // Padding(
        //   padding: const EdgeInsets.only(left: 5, right: 5),
        //   child: SizedBox(
        //     height: height * 0.1,
        //     width: width,
        //     child: Row(
        //       children: [
        //         Expanded(
        //             flex: 49,
        //             child: InkWell(
        //               onTap: () {},
        //               child: Container(
        //                   decoration: BoxDecoration(
        //                       color: Colors.white.withOpacity(0.15),
        //                       borderRadius: BorderRadius.circular(10),
        //                       border: Border.all(
        //                         color: Colors.white,
        //                         width: 1,
        //                       )),
        //                   alignment: Alignment.center,
        //                   child: const Column(
        //                     children: [
        //                       Spacer(
        //                         flex: 2,
        //                       ),
        //                       Expanded(
        //                         flex: 48,
        //                         child: Text(
        //                           "Holy Quran",
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               color: Colors.lime,
        //                               fontSize: 18,
        //                               fontFamily: "Archivo"),
        //                         ),
        //                       ),
        //                       Expanded(
        //                         flex: 48,
        //                         child: Text(
        //                           "القرآن کریم",
        //                           textAlign: TextAlign.center,
        //                           textDirection: TextDirection.rtl,
        //                           style: TextStyle(
        //                               color: Colors.greenAccent,
        //                               fontFamily: "Amiri",
        //                               fontSize: 22),
        //                         ),
        //                       ),
        //                     ],
        //                   )),
        //             )),
        //         const Spacer(
        //           flex: 2,
        //         ),
        //         Expanded(
        //             flex: 49,
        //             child: InkWell(
        //               onTap: () {},
        //               child: Container(
        //                   decoration: BoxDecoration(
        //                       color: Colors.white.withOpacity(0.15),
        //                       borderRadius: BorderRadius.circular(10),
        //                       border: Border.all(
        //                         color: Colors.white,
        //                         width: 1,
        //                       )),
        //                   alignment: Alignment.center,
        //                   child: const Column(
        //                     children: [
        //                       Expanded(
        //                         child: Text(
        //                           "The Hadith",
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontSize: 18,
        //                               color: Colors.lime,
        //                               fontFamily: "Archivo"),
        //                         ),
        //                       ),
        //                       Expanded(
        //                         child: Text(
        //                           "الحدیث",
        //                           textDirection: TextDirection.ltr,
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontSize: 25,
        //                               color: Colors.greenAccent,
        //                               fontFamily: "Amiri"),
        //                         ),
        //                       ),
        //                     ],
        //                   )),
        //             )),
        //       ],
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
        //   child: SizedBox(
        //     height: height * 0.1,
        //     width: width,
        //     child: Row(
        //       children: [
        //         Expanded(
        //             flex: 49,
        //             child: InkWell(
        //               onTap: () {},
        //               child: Container(
        //                   decoration: BoxDecoration(
        //                       color: Colors.white.withOpacity(0.15),
        //                       borderRadius: BorderRadius.circular(10),
        //                       border: Border.all(
        //                         color: Colors.white,
        //                         width: 1,
        //                       )),
        //                   alignment: Alignment.center,
        //                   child: const Column(
        //                     children: [
        //                       Spacer(
        //                         flex: 2,
        //                       ),
        //                       Expanded(
        //                         flex: 48,
        //                         child: Text(
        //                           "Holy Quran",
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               color: Colors.lime,
        //                               fontSize: 18,
        //                               fontFamily: "Archivo"),
        //                         ),
        //                       ),
        //                       Expanded(
        //                         flex: 48,
        //                         child: Text(
        //                           "القرآن کریم",
        //                           textAlign: TextAlign.center,
        //                           textDirection: TextDirection.rtl,
        //                           style: TextStyle(
        //                               color: Colors.greenAccent,
        //                               fontFamily: "Amiri",
        //                               fontSize: 22),
        //                         ),
        //                       ),
        //                     ],
        //                   )),
        //             )),
        //         const Spacer(
        //           flex: 2,
        //         ),
        //         Expanded(
        //             flex: 49,
        //             child: InkWell(
        //               onTap: () {},
        //               child: Container(
        //                   decoration: BoxDecoration(
        //                       color: Colors.white.withOpacity(0.15),
        //                       borderRadius: BorderRadius.circular(10),
        //                       border: Border.all(
        //                         color: Colors.white,
        //                         width: 1,
        //                       )),
        //                   alignment: Alignment.center,
        //                   child: const Column(
        //                     children: [
        //                       Expanded(
        //                         child: Text(
        //                           "The Hadith",
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontSize: 18,
        //                               color: Colors.lime,
        //                               fontFamily: "Archivo"),
        //                         ),
        //                       ),
        //                       Expanded(
        //                         child: Text(
        //                           "الحدیث",
        //                           textDirection: TextDirection.ltr,
        //                           textAlign: TextAlign.center,
        //                           style: TextStyle(
        //                               fontSize: 25,
        //                               color: Colors.greenAccent,
        //                               fontFamily: "Amiri"),
        //                         ),
        //                       ),
        //                     ],
        //                   )),
        //             )),
        //       ],
        //     ),
        //   ),
        // ),





 // SizedBox(
        //   child: InkWell(
        //     onTap: () {},
        //     child: Padding(
        //       padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
        //       child: Container(
        //           width: width,
        //           height: height * 0.2,
        //           decoration: BoxDecoration(
        //               color: Colors.white.withOpacity(0.15),
        //               borderRadius: BorderRadius.circular(10),
        //               border: Border.all(
        //                 color: Colors.white,
        //                 width: 1,
        //               )),
        //           alignment: Alignment.center,
        //           child: const Row(
        //             children: [
        //               Expanded(
        //                 child: Text(
        //                   "The Hadith",
        //                   textAlign: TextAlign.center,
        //                   style: TextStyle(
        //                       fontSize: 18,
        //                       color: Colors.lime,
        //                       fontFamily: "Archivo"),
        //                 ),
        //               ),
        //               VerticalDivider(
        //                 indent: 0,
        //                 endIndent: 0.1,
        //               ),
        //               Expanded(
        //                 child: Text(
        //                   "الحدیث",
        //                   textDirection: TextDirection.ltr,
        //                   textAlign: TextAlign.center,
        //                   style: TextStyle(
        //                       fontSize: 25,
        //                       color: Colors.greenAccent,
        //                       fontFamily: "Amiri"),
        //                 ),
        //               ),
        //             ],
        //           )),
        //     ),
        //   ),
        // ),



 */