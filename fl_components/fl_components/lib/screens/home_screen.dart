import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';
export 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en Flutter"),
        elevation: 0.0,
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(
            menuOptions[index].icon,
            color: AppTheme.primary,
          ),
          onTap: () {
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) =>
            const Divider(color: Color.fromARGB(255, 5, 5, 5)),
      ),
    );
  }
}
