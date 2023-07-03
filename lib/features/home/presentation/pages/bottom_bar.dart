import 'dart:math';

import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:parents/core/theme/font_size.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:textfield_tags/textfield_tags.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyHomePage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: SearchHeader(
              title: 'Trees',
            ),
          ),
          // Container(
          //   child: Text("asd"),
          // ),
          SliverFillRemaining(
              hasScrollBody: true,
              child: ListView(
                children: [
                  Image.asset('assets/images/code.png'),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          'تم إرسال كود التفعيل إلي',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText + 1,
                              color: AppColors.smallText),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {}, child: Text('تعديل')),
                          Text(
                            '+97647347674',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintFormField + 2,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Center(
                        child: Text(
                          'أدخل كود التفعيل المكون من 4 أرقام ',
                          style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.hintFormField - 1,
                            color: AppColors.orange,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: PinCodeTextField(
                            appContext: context,
                            length: 4,
                          ),
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    horizontal: 80, vertical: 10),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.orange),
                            ),
                            onPressed: () {},
                            child: Text(
                              'تغيير كلمة السر',
                              style: TextStyle(
                                  fontSize: AppFontSize.hintFormField,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                '50 ثانية',
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: AppFontSize.smallText + 1,
                                    fontFamily: 'Cairo'),
                              ),
                              Icon(
                                Icons.alarm,
                                color: Colors.blueAccent,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'إعادة إرسال',
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: AppFontSize.smallText + 1),
                                  )),
                              Text(
                                'لم يصلك الكود؟',
                                style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontSize: AppFontSize.smallText + 1,
                                    color: AppColors.smallText),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  )),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.menu,
                              color: AppColors.hint,
                            ),
                            Text(
                              'المزيد',
                              style: TextStyle(
                                  fontSize: AppFontSize.smallText,
                                  color: AppColors.hint,
                                  fontFamily: 'Cairo'),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.menu,
                              color: AppColors.hint,
                            ),
                            Text(
                              'المزيد',
                              style: TextStyle(
                                  fontSize: AppFontSize.smallText,
                                  color: AppColors.hint,
                                  fontFamily: 'Cairo'),
                            )
                          ],
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AppColors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.menu,
                                color: AppColors.hint,
                              ),
                              Text(
                                'المزيد',
                                style: TextStyle(
                                    fontSize: AppFontSize.smallText,
                                    color: AppColors.hint,
                                    fontFamily: 'Cairo'),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.menu,
                              color: AppColors.hint,
                            ),
                            Text(
                              'المزيد',
                              style: TextStyle(
                                  fontSize: AppFontSize.smallText,
                                  color: AppColors.hint,
                                  fontFamily: 'Cairo'),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.menu,
                              color: AppColors.hint,
                            ),
                            Text(
                              'المزيد',
                              style: TextStyle(
                                  fontSize: AppFontSize.smallText,
                                  color: AppColors.hint,
                                  fontFamily: 'Cairo'),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class SearchHeader extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight = 100;
  final double maxTopBarHeight = 200;
  final String title;

  SearchHeader({
    required this.title,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    var topBar = Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height:
            max(maxTopBarHeight * (1 - shrinkFactor * 1.45), minTopBarHeight),
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' الملف الشخصي',
              style: TextStyle(
                  fontSize: AppFontSize.smallText * 2,
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: AppColors.smallTextColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )),
      ),
    );
    return Container(
      height: max(maxExtent - shrinkOffset, minExtent),
      child: Stack(
        fit: StackFit.loose,
        children: [
          if (shrinkFactor <= 0.5) topBar,
          if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
