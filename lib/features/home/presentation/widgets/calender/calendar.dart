import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/features/home/presentation/bloc/calendar/calendar_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CalendarFormat calendarFormat = CalendarFormat.twoWeeks;
    RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;
    DateTime focusedDay = DateTime.now();
    DateTime? selectedDay;
    DateTime? rangeStart;
    DateTime? rangeEnd;
    return BlocBuilder<CalendarBloc, CalendarState>(
      builder: (context, state) {
        if (state is OnDaySelectedState) {
          selectedDay = state.selectedDay;
          focusedDay = state.focusDay;
          rangeStart = null;
          rangeEnd = null;
          rangeSelectionMode = RangeSelectionMode.toggledOff;
        } else if (state is OnRangeSelectedState) {
          selectedDay = null;
          focusedDay = state.selectedDay;
          rangeStart = state.start;
          rangeEnd = state.end;
          rangeSelectionMode = RangeSelectionMode.toggledOn;
        } else if (state is OnPageChangedState) {
          focusedDay = state.focusedDay;
        }
        return Column(
          children: [
            Text(
              'حدد أيام الغياب علي التقويم',
              style: TextStyle(
                  fontSize: AppFontSize.smallText + 2,
                  fontFamily: 'Cairo',
                  color: AppColors.smallText),
            ),
            const Expanded(child: Text('')),
            TableCalendar(
              headerVisible: false,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: focusedDay,
              selectedDayPredicate: (day) => isSameDay(selectedDay, day),
              rangeStartDay: rangeStart,
              rangeEndDay: rangeEnd,
              calendarFormat: calendarFormat,
              rangeSelectionMode: rangeSelectionMode,
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(selectedDay, selectedDay)) {
                  CalendarBloc.get(context).add(OnDaySelectedEvent(
                      selectedDay: selectedDay, focusDay: focusedDay));
                }
              },
              onRangeSelected: (start, end, focusedDay) {
                CalendarBloc.get(context).add(OnRangeSelectedEvent(
                    selectedDay: focusedDay, start: start, end: end));
              },
              onFormatChanged: (format) {
                // if (_calendarFormat != format) {
                //   setState(() {
                //     _calendarFormat = format;
                //   });
                // }
              },
              onPageChanged: (focusedDay) {
                CalendarBloc.get(context).add(OnPageChangedEvent(focusedDay));
              },
            )
          ],
        );
      },
    );
  }
}
