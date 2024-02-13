import 'package:flutter/widgets.dart';
import 'package:notes_app_1/widgets/element_builder.dart';

class RowBuilder extends StatefulWidget {
  const RowBuilder({
    super.key,
    required this.onElementTap,
    required this.choosenIndex,
  });
  final int choosenIndex;
  final Function(int) onElementTap;

  @override
  State<RowBuilder> createState() => _RowBuilderState();
}

class _RowBuilderState extends State<RowBuilder> {
  @override
  Widget build(context) {
    const List<String> _elementNames = [
      'Folders',
      'Notes',
      'To Do',
      'Remainder',
    ];
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        for (int i = 0; i < 4; i++)
          ElementBuilder(
            name: _elementNames[i],
            index: i,
            onTap: widget.onElementTap,
            isSelected: i == widget.choosenIndex,
          ),
      ],
    );
  }
}
