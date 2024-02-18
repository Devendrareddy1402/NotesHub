import 'package:flutter/material.dart';

class TodoCheckmark extends StatefulWidget {
  const TodoCheckmark({super.key});

  @override
  State<TodoCheckmark> createState() => _TodoCheckmarkState();
}

class _TodoCheckmarkState extends State<TodoCheckmark> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      child: Material(
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            setState(
              () {
                _value = !_value;
              },
            );
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: _value ? Colors.grey.shade300 : Colors.orange.shade400),
            child: const Padding(
              padding: EdgeInsets.all(1),
              child: Icon(
                Icons.check,
                size: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
