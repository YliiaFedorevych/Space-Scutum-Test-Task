import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lift_test_task/feature/floors/bloc/floor_bloc.dart';

import 'package:lift_test_task/feature/floors/ui/floor_item.dart';

class FloorsScreen extends StatelessWidget {
  const FloorsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 113, left: 35),
            child: Text(
              'Floors',
              style: textTheme.titleMedium,
            ),
          ),
          const Divider(
            indent: 25,
            endIndent: 25,
            color: Colors.black,
            thickness: 1,
          ),
          BlocBuilder<FloorBloc, FloorState>(
            builder: (context, state) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66),
                  child: ListView.separated(
                    itemBuilder: (context, index) => FloorItem(
                      floor: state.floors[index],
                      selected: state.floors[index].numberFloor == state.selectedFloor.numberFloor,
                      movingFloor: state.movingFloor,
                    ),
                    separatorBuilder: (context, index) => const SizedBox(height: 30),
                    itemCount: state.floors.length,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
