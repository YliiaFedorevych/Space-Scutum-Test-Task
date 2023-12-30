import 'package:flutter/material.dart';
import 'package:lift_test_task/feature/auth/ui/auth_screen.dart';
import 'package:lift_test_task/feature/floors/ui/floors_scope.dart';

import 'package:lift_test_task/feature/house/ui/house_screen.dart';
import 'package:lift_test_task/route/app_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFE6E6E6)),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.authPath: (context) => const AuthScreen(),
        AppRoutes.housePath: (context) => const HouseScreen(),
        AppRoutes.floorsPath: (context) => FloorsScope(),
      },
      initialRoute: AppRoutes.authPath,
    );
  }
}
