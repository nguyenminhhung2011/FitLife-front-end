import 'package:fit_life/core/components/enum/exercise_set.dart';
import 'package:fit_life/core/components/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class ExerciseSetItem extends StatefulWidget {
  final ExerciseSet e;
  final int data;
  const ExerciseSetItem({super.key, required this.e, required this.data});

  @override
  State<ExerciseSetItem> createState() => _ExerciseSetItemState();
}

class _ExerciseSetItemState extends State<ExerciseSetItem> {
  int _data = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _data = widget.data;
    });
  }

  void _remove() {
    if (_data > 0) {
      setState(() {
        _data -= 1;
      });
    }
  }

  void _add() {
    setState(() {
      _data += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.e.stringGenerate,
          style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 7.0),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 1, color: Theme.of(context).hintColor),
          ),
          child: Row(children: [
            IconButton(
              onPressed: _remove,
              icon: const Icon(Icons.remove),
            ),
            Expanded(
              child: Text(
                '$_data ${widget.e.pre}',
                textAlign: TextAlign.center,
                style:
                    context.titleMedium.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            IconButton(
              onPressed: _add,
              icon: const Icon(Icons.add),
            )
          ]),
        )
      ],
    );
  }
}
