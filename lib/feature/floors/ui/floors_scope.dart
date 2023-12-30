import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lift_test_task/feature/floors/bloc/floor_bloc.dart';
import 'package:lift_test_task/feature/floors/ui/floors_screen.dart';

class FloorsScope extends StatelessWidget {
  const FloorsScope({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FloorBloc(),
      child: FloorsScreen(),
    );
  }
}
