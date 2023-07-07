import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/helper/AppUtils.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/features/home/presentation/pages/tracking_page.dart';

class CarousalTrackingWidget extends StatelessWidget {
  const CarousalTrackingWidget({super.key, required this.imgList});
  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: double.infinity,
            aspectRatio: 3,
            viewportFraction: .5,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          itemBuilder: (context, index, realIndex) {
            return GestureDetector(
              onTap: () {
                AppUtils.pushTo(context, const TrackingPage());
              },
              child: Container(
                height: MediaQuery.of(context).size.width / 2,
                width: MediaQuery.of(context).size.width / 2,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Column(children: [
                    Container(
                      width: double.infinity,
                      padding:
                          const EdgeInsets.only(right: 10, top: 5, bottom: 5),
                      color: index == 0
                          ? const Color(0xFF749C4A)
                          : index == 1
                              ? Colors.yellow
                              : const Color(0xFF7CBFF2),
                      child: Text(
                        'اسم الطالب',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: AppFontSize.smallText,
                          color: AppColors.smallText,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          width: double.infinity,
                          color: AppColors.bgSendMessage,
                          child: Image.asset(
                            'assets/images/map2.png',
                            fit: BoxFit.cover,
                          )),
                    )
                  ]),
                ),
              ),
            );
          },
          itemCount: imgList.length,
        ),
      ],
    );
  }
}
