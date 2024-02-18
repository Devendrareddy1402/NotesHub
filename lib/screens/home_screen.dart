import 'package:flutter/material.dart';
import 'package:notes_app_1/widgets/calendar_date_dot.dart';
import 'package:notes_app_1/widgets/calender_view.dart';
import 'package:notes_app_1/widgets/todo_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Good Morning,',
            textAlign: TextAlign.start, style: TextStyle(fontSize: 30)),
        Text('Jessy',
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        CalendarView(),
        TodoView(),
      ]),
    );
  }
}
