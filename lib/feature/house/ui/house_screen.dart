import 'package:flutter/material.dart';
import 'package:lift_test_task/feature/house/ui/house_item.dart';

class HouseScreen extends StatelessWidget {
  const HouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 98, left: 66, right: 66),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Add house'),
                  SizedBox(width: 16),
                  Icon(Icons.add),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 30),
                itemBuilder: (context, index) => HouseItem(index: index),
                itemCount: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
