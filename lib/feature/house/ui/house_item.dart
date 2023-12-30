import 'package:flutter/material.dart';
import 'package:lift_test_task/route/app_routes.dart';

class HouseItem extends StatelessWidget {
  const HouseItem({
    required this.index,
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoutes.floorsPath);
      },
      child: Container(
          padding: const EdgeInsets.only(left: 9, top: 11, bottom: 10),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            children: [
              const Text('House'),
              const SizedBox(
                width: 36,
              ),
              Text('writed name $index'),
            ],
          )),
    );
  }
}
