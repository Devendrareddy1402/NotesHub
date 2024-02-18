import 'package:flutter/material.dart';
import 'package:notes_app_1/widgets/todo_checkmark.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Things to do',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange.shade100,
                      const Color.fromARGB(132, 255, 224, 178)
                    ],
                  ),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text('+ Add'),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(width: 0.1)),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      TodoCheckmark(),
                      Text('Watch Avatar new movie.',
                          style: TextStyle(fontSize: 16))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      TodoCheckmark(),
                      Flexible(
                        child: Text(
                          'Meet Designer to discuss about the new UI/UX project.',
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      TodoCheckmark(),
                      Text('Watch Avatar new movie.',
                          style: TextStyle(fontSize: 16))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      TodoCheckmark(),
                      Text('Dinner with friends.',
                          style: TextStyle(fontSize: 16))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
