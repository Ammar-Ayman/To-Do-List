import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.sizeOf(context);
    var theme = Theme.of(context);
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: mediaQuery.width * 0.04,
              ),
              height: mediaQuery.height * 0.2,
              width: double.infinity,
              color: theme.colorScheme.secondary,
              child: Text(
                "To Do List",
                style: theme.textTheme.titleLarge,
                textAlign: TextAlign.start,
              ),
            ),
            Positioned(
              width: mediaQuery.width * 0.9,
              top: mediaQuery.height * 0.13,
              child: EasyDateTimeLine(

                timeLineProps: const EasyTimeLineProps(separatorPadding: 6),
                headerProps: const EasyHeaderProps(
                  showHeader: false,
                ),
                initialDate: DateTime.now(),
                onDateChange: (selectedDate) {
                  //`selectedDate` the new date selected.
                },
                activeColor: const Color(0xff8426D6),
                dayProps: EasyDayProps(
                  borderColor: Colors.black,
                  todayHighlightStyle: TodayHighlightStyle.withBackground,
                  todayHighlightColor: const Color(0xffE1ECC8),
                  dayStructure: DayStructure.dayStrDayNumMonth,
                  activeDayStyle: const DayStyle(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff3371FF),
                          Color(0xff8426D6),
                        ],
                      ),
                    ),

                  ),
                  inactiveDayStyle: DayStyle(
                    decoration: BoxDecoration(
                      border:
                      Border.all(width: 1, color: const Color(0xff8426D6)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.white24,
                          Colors.white60,
                        ],
                      ),
                    ),
                    dayStrStyle: theme.textTheme.titleSmall
                        ?.copyWith(color: Colors.black),
                    dayNumStyle: theme.textTheme.titleSmall
                        ?.copyWith(color: Colors.black),
                    monthStrStyle: theme.textTheme.titleSmall
                        ?.copyWith(color: Colors.black),
                  ),
                  todayStyle: DayStyle(

                    decoration: const BoxDecoration(

                      borderRadius: BorderRadius.all(Radius.circular(10)),

                      color: Colors.blueAccent
                    ),
                    dayStrStyle: theme.textTheme.titleSmall
                        ?.copyWith(color: Colors.black),
                    dayNumStyle: theme.textTheme.titleSmall
                        ?.copyWith(color: Colors.black),
                    monthStrStyle: theme.textTheme.titleSmall
                        ?.copyWith(color: Colors.black),
                  ),




                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}