import 'package:flutter/material.dart';
import 'package:lift_test_task/route/app_routes.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text(
              'desinged by ...',
              style: textTheme.bodyLarge,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Test task',
            style: textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 47),
          const FlutterLogo(
            size: 200,
          ),
          const SizedBox(height: 31),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 66),
            child: ElevatedButton(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(textTheme.bodyLarge),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 94, vertical: 19),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(AppRoutes.housePath);
              },
              child: const Text('Enter'),
            ),
          ),
        ],
      ),
    );
  }
}
