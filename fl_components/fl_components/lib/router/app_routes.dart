import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    /* MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'HomeScreen',
        screen: const HomeScreen()), */
    MenuOption(
        route: 'listview1',
        icon: Icons.list_rounded,
        name: 'List view 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.line_style_rounded,
        name: 'List view 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_outlined,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.calculate_rounded,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'Animated',
        icon: Icons.play_circle_outline_rounded,
        name: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'Inputs',
        icon: Icons.input_outlined,
        name: 'Inputs Screen',
        screen: const InputsScreen())
  ];

  static Map<String, Widget Function(BuildContext context)> getAppRoutes() {
    Map<String, Widget Function(BuildContext context)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      //clave para anadir todas las rutas a la approutes
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext context)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  // ignore: non_constant_identifier_names
  static Route<dynamic> OnGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
