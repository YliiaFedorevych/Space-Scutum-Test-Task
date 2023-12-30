import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lift_test_task/feature/floors/bloc/floor_bloc.dart';
import 'package:lift_test_task/feature/floors/data/floor.dart';

class FloorItem extends StatelessWidget {
  const FloorItem({
    required this.floor,
    super.key,
    required this.selected,
    required this.movingFloor,
  });
  
  final Floor floor;
  final bool selected;
  final bool movingFloor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        context.read<FloorBloc>().add(SelectFloorEvent(floor: floor));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          top: 12,
          bottom: 9,
        ),
        decoration: BoxDecoration(
          color: movingFloor && selected
              ? Colors.yellow
              : selected
                  ? Colors.green
                  : Colors.transparent,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text('Floor ${floor.numberFloor}', style: textTheme.bodyLarge),
      ),
    );
  }
}
