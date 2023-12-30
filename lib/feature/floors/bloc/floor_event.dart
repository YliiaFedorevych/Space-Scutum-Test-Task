part of 'floor_bloc.dart';

sealed class FloorEvent {}

class SelectFloorEvent extends FloorEvent {
  final Floor floor;

  SelectFloorEvent({required this.floor});
}

