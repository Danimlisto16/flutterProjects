export 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const AlertScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),

      onGenerateRoute: AppRoutes.OnGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}
