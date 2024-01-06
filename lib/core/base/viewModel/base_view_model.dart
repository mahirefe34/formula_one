import 'package:flutter/material.dart';

import '../../init/navigation/navigation_service.dart';
import '../../init/network/service/network_service.dart';

mixin BaseViewModel {
  late BuildContext baseContext;

  NetworkService networkService = NetworkService.instance;
  NavigationService navigation = NavigationService.instance;

  void setContext(BuildContext context);
  void init();
}
