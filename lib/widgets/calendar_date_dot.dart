import 'package:flutter/material.dart';

class CalendarDateDot extends StatelessWidget {
  const CalendarDateDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10),
        child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.white,
                side: const BorderSide(width: 0.1),
                shape: const CircleBorder()),
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '12',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        height: 1,
                        letterSpacing: -2),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'SUN',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ])));
  }
}
