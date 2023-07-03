import 'package:awesome_icons/awesome_icons.dart';
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/theme/font_size.dart';
import 'package:parents/core/widgets/appbar/appbar_more.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/core/widgets/bottom_bar/bottom_bar.dart';
import 'package:parents/features/home/presentation/bloc/post_trip/post_trip_bloc.dart';
import 'package:parents/features/home/presentation/pages/sons_page.dart';
import 'package:parents/features/home/presentation/widgets/more/menu.dart';
import 'package:parents/features/home/presentation/widgets/past_trip/card_trip.dart';
import 'package:parents/features/home/presentation/widgets/past_trip/horizental_slider.dart';
import 'package:parents/features/home/presentation/widgets/sons_trips/card_sons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PostTripBloc(),
        child: SonsPage(),
      ),
    );
  }
}
