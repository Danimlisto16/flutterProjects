
import 'package:fl_components/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const AlertScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,

      onGenerateRoute: AppRoutes.OnGenerateRoute,
    );
  }
}
