import 'package:flutter/material.dart';

import 'calendar_date_dot.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 118,
        padding: const EdgeInsets.only(top: 25),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => const CalendarDateDot(),
        ));
  }
}
