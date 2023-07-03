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
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/add_image_pro.png'),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: Colors.red,
                            ),
                            label: Text(
                              'تعديل',
                              style: TextStyle(color: Colors.red),
                            )),
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'اسم المستخدم ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.smallText + 1,
                                color: AppColors.smallText),
                          ),
                          TextFormField(
                            controller: usernameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'رقم الجوال',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.smallText + 1,
                                color: AppColors.smallText),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: InternationalPhoneNumberInput(
                              inputDecoration: InputDecoration(),
                              onInputChanged: (PhoneNumber number) {
                                print(number.phoneNumber);
                              },
                              onInputValidated: (bool value) {
                                print(value);
                              },
                              selectorConfig: SelectorConfig(
                                selectorType:
                                    PhoneInputSelectorType.BOTTOM_SHEET,
                              ),
                              ignoreBlank: false,
                              autoValidateMode: AutovalidateMode.disabled,
                              selectorTextStyle: TextStyle(color: Colors.black),
                              // initialValue: number,
                              // textFieldController: controller,
                              formatInput: true,
                              keyboardType: TextInputType.numberWithOptions(
                                  signed: true, decimal: true),
                              inputBorder: OutlineInputBorder(),
                              onSaved: (PhoneNumber number) {
                                print('On Saved: $number');
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'الاسم الكامل',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.smallText + 1,
                                color: AppColors.smallText),
                          ),
                          TextFormField(
                            controller: fullNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'البريد الالكتروني',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.smallText + 1,
                                color: AppColors.smallText),
                          ),
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'تحديد المدينة',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.smallText + 1,
                                color: AppColors.smallText),
                          ),
                          TextFormField(
                            controller: cityController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'العنوان بالتفصيل',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.smallText + 1,
                                color: AppColors.smallText),
                          ),
                          TextFormField(
                            controller: addressController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 3,
                    color: Colors.grey,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            'إعدادات الإشعارات',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintFormField + 1,
                                color: AppColors.smallText),
                          ),
                        )),
                        Icon(Icons.alarm_off),
                      ],
                    ),
                  ),
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
