import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parents/core/helper/AppUtils.dart';
import 'package:parents/core/theme/colors.dart';
import 'package:parents/core/widgets/appbar/with_title.dart';
import 'package:parents/core/widgets/buttons/full_width_btn.dart';
import 'package:parents/features/home/presentation/bloc/choose_sone/choose_son_bloc.dart';
import 'package:parents/features/home/presentation/pages/attendence.dart';
import 'package:parents/features/home/presentation/widgets/sons_trips/card_sons.dart';

class ChooseSonsPage extends StatefulWidget {
  const ChooseSonsPage({super.key});

  @override
  State<ChooseSonsPage> createState() => _ChooseSonsPageState();
}

class _ChooseSonsPageState extends State<ChooseSonsPage> {
  @override
  Widget build(BuildContext context) {
    bool isSelect = false;
    int index = -1;
    return BlocProvider(
      create: (context) => ChooseSonBloc(),
      child: BlocBuilder<ChooseSonBloc, ChooseSonState>(
        builder: (context, state) {
          if (state is ChooseSonDoneState) {
            isSelect = true;
            index = state.index;
          } else if (state is UnChooseSonDoneState) {
            isSelect = false;
            index = -1;
          }
          return Scaffold(
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: FullWidthBtn(
                bg: isSelect ? AppColors.orange : const Color(0xFF707070),
                label: 'التالي',
                callBack: isSelect
                    ? () {
                        AppUtils.pushTo(context, const AttendencePage());
                      }
                    : null,
              ),
            ),
            backgroundColor: Colors.white,
            body: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                    pinned: true,
                    floating: false,
                    delegate: AppBarWithTitle(
                        context: context,
                        title: 'اختيار الابن',
                        callBack: () {
                          Navigator.pop(context);
                        })),
                SliverFillRemaining(
                  hasScrollBody: true,
                  child: ListView(
                    children: [
                      CardSonsWidget(
                        border: index == 0,
                        callBack: () {
                          if (index != 0) {
                            ChooseSonBloc.get(context)
                                .add(ChooseSonDoneEvent(index: 0));
                          } else {
                            ChooseSonBloc.get(context)
                                .add(UnChooseSonDoneEvent());
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CardSonsWidget(
                        border: index == 1,
                        callBack: () {
                          if (index != 1) {
                            ChooseSonBloc.get(context)
                                .add(const ChooseSonDoneEvent(index: 1));
                          } else {
                            ChooseSonBloc.get(context)
                                .add(UnChooseSonDoneEvent());
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CardSonsWidget(
                        border: index == 2,
                        callBack: () {
                          if (index != 2) {
                            ChooseSonBloc.get(context)
                                .add(const ChooseSonDoneEvent(index: 2));
                          } else {
                            ChooseSonBloc.get(context)
                                .add(UnChooseSonDoneEvent());
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CardSonsWidget(
                        border: index == 3,
                        callBack: () {
                          if (index != 3) {
                            ChooseSonBloc.get(context)
                                .add(const ChooseSonDoneEvent(index: 3));
                          } else {
                            ChooseSonBloc.get(context)
                                .add(UnChooseSonDoneEvent());
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CardSonsWidget(
                        border: index == 4,
                        callBack: () {
                          if (index != 4) {
                            ChooseSonBloc.get(context)
                                .add(const ChooseSonDoneEvent(index: 4));
                          } else {
                            ChooseSonBloc.get(context)
                                .add(UnChooseSonDoneEvent());
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
