import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parents/core/helper/AppUtils.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/features/home/presentation/bloc/post_trip/post_trip_bloc.dart';
import 'package:parents/features/home/presentation/pages/sons_trip.dart';

class CardTripWidget extends StatelessWidget {
  const CardTripWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var expanded = false;
    return BlocBuilder<PostTripBloc, PostTripState>(
      builder: (context, state) {
        if (state is ToggleExpandedState) {
          expanded = state.isOpen;
        }
        return Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    color: Colors.white,
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.only(
                          left: 20, top: 0, right: 0, bottom: 0),
                      trailing: RotationTransition(
                        turns: AlwaysStoppedAnimation(expanded ? -0.25 : 0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: !expanded ? AppColors.smallText : Colors.white,
                        ),
                      ),
                      onExpansionChanged: (value) {
                        PostTripBloc.get(context)
                            .add(ToggleExpandedEvent(expanded));
                      },
                      backgroundColor: AppColors.smallTextColor,
                      title: Container(
                        // padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'رحلة الذهاب إلي المدرسة',
                                          style: TextStyle(
                                              fontFamily: 'Cairo',
                                              fontSize: AppFontSize.hintText,
                                              fontWeight: FontWeight.bold,
                                              color: expanded
                                                  ? Colors.white
                                                  : AppColors.smallText),
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          color: expanded
                                              ? Colors.white
                                              : AppColors.smallText,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '0 MIN',
                                              style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize:
                                                      AppFontSize.hintText - 2,
                                                  color: expanded
                                                      ? AppColors.bgSendMessage
                                                      : AppColors.smallText),
                                            ),
                                            SvgPicture.asset(
                                              expanded
                                                  ? 'assets/icons/time.svg'
                                                  : 'assets/icons/time_dark.svg',
                                            ),
                                            // const Icon(
                                            //   Icons.location_searching,
                                            //   color: AppColors.bgSendMessage,
                                            // ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              '0 KM',
                                              style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize:
                                                      AppFontSize.hintText - 2,
                                                  color: expanded
                                                      ? AppColors.bgSendMessage
                                                      : AppColors.smallText),
                                            ),
                                            SvgPicture.asset(
                                              expanded
                                                  ? 'assets/icons/distance.svg'
                                                  : 'assets/icons/distance_dark.svg',
                                            ),
                                            // const Icon(

                                            //   color: AppColors.bgSendMessage,
                                            // ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: AppColors.smallTextColor,
                                  child: Image.asset('assets/images/bus.png'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      children: [
                        GestureDetector(
                          onTap: () {
                            AppUtils.pushTo(context, const SonsTripsPage());
                          },
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'الطالب صعد الباص',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'الرحلة جارية',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock_green.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'الباص متجه إلي المنزل',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock_yellow.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'الباص متجه إلي المنزل',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock_yellow.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'الطالب صعد الباص',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'الرحلة انتهت',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          FDottedLine(
                                            color: Colors.grey,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                            strokeWidth: 1.0,
                                            dottedLength: 2.0,
                                            space: 2.0,
                                          ),
                                          SvgPicture.asset(
                                            'assets/icons/clock_red.svg',
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text('8:36 ص',
                                          style: TextStyle(
                                            fontSize: AppFontSize.hintText - 2,
                                            fontFamily: 'Cairo',
                                            color: AppColors.smallText,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )));
      },
    );
  }
}
