import 'dart:math';

import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:parents/core/theme/font_size.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:textfield_tags/textfield_tags.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyHomePage extends StatelessWidget {
  TextfieldTagsController _controller = TextfieldTagsController();
  // CalendarController _controller = CalendarController();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOn; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  static BuildContext? context;
  @override
  Widget build(BuildContext context) {
    MyHomePage.context = context;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.orange),
            ),
            onPressed: () {},
            child: Text(
              'التالي',
              style: TextStyle(
                  fontSize: AppFontSize.hintFormField,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
      ),
      backgroundColor: Colors.white70,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            // pinned: true,
            // floating: false,
            delegate: SearchHeader(
              icon: Icons.terrain,
              title: 'Trees',
              search: _Search(),
            ),
          ),
          SliverFillRemaining(
            // hasScrollBody: true,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'نوع الرحلة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: AppFontSize.hintText,
                        color: AppColors.smallText),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 4, // Adjust the elevation value as needed
                          backgroundColor: AppColors
                              .bgSendMessage, // Set the background color
                        ),
                        onPressed: () {},
                        child: Text(
                          'ذهاب فقط',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintText,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 4, // Adjust the elevation value as needed
                          backgroundColor: AppColors
                              .bgSendMessage, // Set the background color
                        ),
                        onPressed: () {},
                        child: Text(
                          'ذهاب فقط',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintText,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 4, // Adjust the elevation value as needed
                          backgroundColor: AppColors
                              .smallTextColor, // Set the background color
                        ),
                        onPressed: () {},
                        child: Text(
                          'ذهاب فقط',
                          style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: AppFontSize.hintText,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'سبب الغياب',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: AppFontSize.hintText,
                        color: AppColors.smallText),
                  ),
                ),
                Expanded(
                  child: TextFieldTags(
                    textfieldTagsController: _controller,
                    initialTags: const [
                      'pick',
                      'your',
                      'favorite',
                      'programming',
                      'language'
                    ],
                    textSeparators: const [' ', ','],
                    letterCase: LetterCase.normal,
                    validator: (String tag) {
                      if (tag == 'php') {
                        return 'No, please just no';
                      } else if (_controller.getTags!.contains(tag)) {
                        return 'you already entered that';
                      }
                      return null;
                    },
                    inputfieldBuilder:
                        (context, tec, fn, error, onChanged, onSubmitted) {
                      return ((context, sc, tags, onTagDelete) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            controller: tec,
                            focusNode: fn,
                            decoration: InputDecoration(
                              isDense: true,
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 74, 137, 92),
                                  width: 3.0,
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 74, 137, 92),
                                  width: 3.0,
                                ),
                              ),
                              helperText: 'Enter language...',
                              helperStyle: const TextStyle(
                                color: Color.fromARGB(255, 74, 137, 92),
                              ),
                              hintText:
                                  _controller.hasTags ? '' : "Enter tag...",
                              errorText: error,
                              prefixIconConstraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.74),
                              prefixIcon: tags.isNotEmpty
                                  ? SingleChildScrollView(
                                      controller: sc,
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                          children: tags.map((String tag) {
                                        return Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),
                                            ),
                                            color: Color.fromARGB(
                                                255, 74, 137, 92),
                                          ),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 5.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                child: Text(
                                                  '#$tag',
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                ),
                                                onTap: () {
                                                  //print("$tag selected");
                                                },
                                              ),
                                              const SizedBox(width: 4.0),
                                              InkWell(
                                                child: const Icon(
                                                  Icons.cancel,
                                                  size: 14.0,
                                                  color: Color.fromARGB(
                                                      255, 233, 233, 233),
                                                ),
                                                onTap: () {
                                                  onTagDelete(tag);
                                                },
                                              )
                                            ],
                                          ),
                                        );
                                      }).toList()),
                                    )
                                  : null,
                            ),
                            onChanged: onChanged,
                            onSubmitted: onSubmitted,
                          ),
                        );
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _Search extends StatefulWidget {
  // _Search({Key key}) : super(key: key);

  @override
  __SearchState createState() => __SearchState();
}

class __SearchState extends State<_Search> {
  late TextEditingController _editingController;

  @override
  void initState() {
    super.initState();
    _editingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: _editingController,
              // textAlignVertical: TextAlignVertical.center,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Theme.of(context).primaryColor.withOpacity(0.5)),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          _editingController.text.trim().isEmpty
              ? IconButton(
                  icon: Icon(Icons.search,
                      color: Theme.of(context).primaryColor.withOpacity(0.5)),
                  onPressed: null)
              : IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  icon: Icon(Icons.clear,
                      color: Theme.of(context).primaryColor.withOpacity(0.5)),
                  onPressed: () => setState(
                    () {
                      _editingController.clear();
                    },
                  ),
                ),
        ],
      ),
    );
  }
}

class SearchHeader extends SliverPersistentHeaderDelegate {
  final double minTopBarHeight = 100;
  final double maxTopBarHeight = 200;
  final String title;
  final IconData icon;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOn; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  final Widget search;

  SearchHeader({
    required this.title,
    required this.icon,
    required this.search,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    var shrinkFactor = min(1, shrinkOffset / (maxExtent - minExtent));

    var topBar = Positioned(
      top: -25,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(MyHomePage.context!).size.height / 4,
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'طلب غياب',
            style: TextStyle(
                color: AppColors.smallText,
                fontFamily: 'Cairo',
                fontSize: AppFontSize.hintText,
                fontWeight: FontWeight.bold),
          ),
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/bg_home_bar.png'), // Replace with your image path
              fit: BoxFit.cover, // Adjust the fit as per your requirements
            ),
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
          Positioned(
              top: (MediaQuery.of(MyHomePage.context!).size.height / 4) / 1.5,
              left: (MediaQuery.of(context).size.width / 3) / 4,
              width: (MediaQuery.of(context).size.width / 3) * 2.5,
              height: MediaQuery.of(MyHomePage.context!).size.height / 4,
              child: Card(
                child: Column(
                  children: [
                    Text(
                      'حدد أيام الغياب علي التقويم',
                      style: TextStyle(
                          fontSize: AppFontSize.smallText + 2,
                          fontFamily: 'Cairo',
                          color: AppColors.smallText),
                    ),
                    TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: _focusedDay,
                      selectedDayPredicate: (day) =>
                          isSameDay(_selectedDay, day),
                      rangeStartDay: _rangeStart,
                      rangeEndDay: _rangeEnd,
                      calendarFormat: _calendarFormat,
                      rangeSelectionMode: _rangeSelectionMode,
                      onDaySelected: (selectedDay, focusedDay) {
                        if (!isSameDay(_selectedDay, selectedDay)) {
                          // setState(() {
                          //   _selectedDay = selectedDay;
                          //   _focusedDay = focusedDay;
                          //   _rangeStart = null; // Important to clean those
                          //   _rangeEnd = null;
                          //   _rangeSelectionMode = RangeSelectionMode.toggledOff;
                          // });
                        }
                      },
                      onRangeSelected: (start, end, focusedDay) {
                        // setState(() {
                        //   _selectedDay = null;
                        //   _focusedDay = focusedDay;
                        //   _rangeStart = start;
                        //   _rangeEnd = end;
                        //   _rangeSelectionMode = RangeSelectionMode.toggledOn;
                        // });
                      },
                      onFormatChanged: (format) {
                        // if (_calendarFormat != format) {
                        //   setState(() {
                        //     _calendarFormat = format;
                        //   });
                        // }
                      },
                      onPageChanged: (focusedDay) {
                        // _focusedDay = focusedDay;
                      },
                    )
                  ],
                ),
              )),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Padding(
          //     padding: EdgeInsets.only(
          //       bottom: 10,
          //     ),
          //     child: Container(
          //       alignment: Alignment.center,
          //       child: search,
          //       width: 200,
          //       height: 50,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(20),
          //           color: Colors.white,
          //           boxShadow: [
          //             BoxShadow(
          //               offset: Offset(0, 10),
          //               blurRadius: 10,
          //               color: Colors.green.withOpacity(0.23),
          //             )
          //           ]),
          //     ),
          //   ),
          // ),
          if (shrinkFactor > 0.5) topBar,
        ],
      ),
    );
  }

  @override
  double get maxExtent =>
      (MediaQuery.of(MyHomePage.context!).size.height / 4) +
      ((MediaQuery.of(MyHomePage.context!).size.height / 4) / 2);

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
