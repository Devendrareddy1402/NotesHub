import 'package:flutter/material.dart';

class ElementBuilder extends StatefulWidget {
  const ElementBuilder({
    super.key,
    required this.name,
    required this.index,
    required this.onTap,
    required this.isSelected,
  });

  final String name;
  final int index;
  final bool isSelected;
  final Function onTap;

  @override
  State<ElementBuilder> createState() => _ElementBuilderState();
}

class _ElementBuilderState extends State<ElementBuilder> {
  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(widget.index);
        print(widget.index);
        print(widget.isSelected);
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        child: Text(
          widget.name,
          style: TextStyle(
            color: widget.isSelected ? Colors.black : Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
