import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

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
            aspectRatio: 1,
            viewportFraction: .7,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          itemBuilder: (context, index, realIndex) {
            return Container(
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
                    color: Colors.green,
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
                          'assets/images/map.png',
                          fit: BoxFit.fill,
                        )),
                  )
                ]),
              ),
            );
          },
          itemCount: imgList.length,
        ),
      ],
    );
  }
}
