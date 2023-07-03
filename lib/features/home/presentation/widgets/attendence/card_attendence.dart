import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';

class CardAttendenceWidget extends StatelessWidget {
  const CardAttendenceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5.7,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.delete)),
                    const Text(''),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          backgroundColor: AppColors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              15,
                            ), // Adjust the radius value as needed
                          ),
                        ),
                        child: Text(
                          "طلب غياب",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.smallText + 3,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '6-11-2022',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'من',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '6-11-2022',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'الي',
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: AppFontSize.hintText,
                                color: AppColors.smallText),
                          )
                        ],
                      ),
                      Text(
                        'نوع الرحلة : الكل',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            fontSize: AppFontSize.hintText,
                            color: AppColors.smallText),
                      )
                    ],
                  ),
                ),
                Image.asset('assets/images/note.png')
              ],
            ),
          )),
    );
  }
}
