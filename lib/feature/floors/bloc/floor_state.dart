part of 'floor_bloc.dart';

class FloorState {
  final List<Floor> floors;
  final Floor selectedFloor;
  final bool movingFloor;

  FloorState({
    required this.floors,
    required this.selectedFloor,
    required this.movingFloor,
  });
}
