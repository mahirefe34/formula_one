import 'package:formula_one/feature/drivers/view/drivers_view.dart';
import 'package:formula_one/feature/drivers/view/subview/driver_detail_view.dart';
import 'package:go_router/go_router.dart';

import '../../../feature/auth/onboard/view/onboard_view.dart';
import '../../../feature/auth/onboard/view/subView/onboard_subview.dart';
import '../../../feature/auth/splash/view/splash_view.dart';

import '../../constants/enums/navigation_enums.dart';

class NavigationService {
  static NavigationService? _instance;
  static NavigationService get instance {
    _instance ??= NavigationService._init();
    return _instance!;
  }

  NavigationService._init();

  final router = GoRouter(routes: [
    GoRoute(
        path: NavigationEnums.splashView.routeName,
        builder: (context, state) => const SplashView()),
    GoRoute(
        path: NavigationEnums.onBoardView.routeName,
        builder: (context, state) => const OnBoardView()),
    GoRoute(
        path: NavigationEnums.onBoardSubView.routeName,
        builder: (context, state) => const OnBoardSubView()),
    GoRoute(
        path: NavigationEnums.driversView.routeName,
        builder: (context, state) => const DriversView()),
    GoRoute(
        name: NavigationEnums.driverDetailView.routeName,
        path: '${NavigationEnums.driverDetailView.routeName}/:driverId',
        builder: (context, state) => const DriverDetailView())
  ]);
}
