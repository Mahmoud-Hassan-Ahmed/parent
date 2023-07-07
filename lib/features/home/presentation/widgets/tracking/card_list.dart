import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/helper/AppUtils.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/features/home/presentation/pages/tracking_page.dart';

class CardListWidget extends StatelessWidget {
  const CardListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'جميع الأبناء',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: AppFontSize.hintFormField + 1,
              fontWeight: FontWeight.bold,
              color: AppColors.smallText),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            AppUtils.pushTo(context, const TrackingPage());
          },
          child: Card(
            elevation: 6.0,
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(right: 14),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'الرحلة جارية',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: AppFontSize.smallText + 1,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold),
                              ))),
                      FDottedLine(
                        color: Colors.black,
                        height: 50.0,
                        strokeWidth: .5,
                        space: 0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'يزن علي',
                                      style: TextStyle(
                                          fontSize: AppFontSize.hintText,
                                          color: AppColors.smallText,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'العودة للمنزل',
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 3,
                                        color: AppColors.smallText,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Expanded(
                                  flex: 2,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/parent.png'), // Replace with your image path
                                  )),
                            ],
                          )),
                    ],
                  )),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            AppUtils.pushTo(context, const TrackingPage());
          },
          child: Card(
            elevation: 6.0,
            color: const Color(0xFFFFEB00),
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(right: 14),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'الباص متجه للمنزل',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: const Color(0xFFFFEB00),
                                    fontSize: AppFontSize.smallText + 1,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold),
                              ))),
                      FDottedLine(
                        color: Colors.black,
                        height: 50.0,
                        strokeWidth: .5,
                        space: 0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'يزن علي',
                                      style: TextStyle(
                                          fontSize: AppFontSize.hintText,
                                          color: AppColors.smallText,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'العودة للمنزل',
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 3,
                                        color: AppColors.smallText,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Expanded(
                                  flex: 2,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/parent.png'), // Replace with your image path
                                  )),
                            ],
                          )),
                    ],
                  )),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            AppUtils.pushTo(context, const TrackingPage());
          },
          child: Card(
            elevation: 6.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(right: 14),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'لا توجد رحلات الآن',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: AppFontSize.smallText + 1,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold),
                              ))),
                      FDottedLine(
                        color: Colors.black,
                        height: 50.0,
                        strokeWidth: .5,
                        space: 0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'يزن علي',
                                      style: TextStyle(
                                          fontSize: AppFontSize.hintText,
                                          color: AppColors.smallText,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'العودة للمنزل',
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 3,
                                        color: AppColors.smallText,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Expanded(
                                  flex: 2,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/parent.png'), // Replace with your image path
                                  )),
                            ],
                          )),
                    ],
                  )),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            AppUtils.pushTo(context, const TrackingPage());
          },
          child: Card(
            elevation: 6.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(right: 14),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                'لا توجد رحلات الآن',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: AppFontSize.smallText + 1,
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.bold),
                              ))),
                      FDottedLine(
                        color: Colors.black,
                        height: 50.0,
                        strokeWidth: .5,
                        space: 0,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'يزن علي',
                                      style: TextStyle(
                                          fontSize: AppFontSize.hintText,
                                          color: AppColors.smallText,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'العودة للمنزل',
                                      style: TextStyle(
                                        fontSize: AppFontSize.hintText - 3,
                                        color: AppColors.smallText,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Expanded(
                                  flex: 2,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/parent.png'), // Replace with your image path
                                  )),
                            ],
                          )),
                    ],
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
