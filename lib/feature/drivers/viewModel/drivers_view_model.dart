import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/viewModel/base_view_model.dart';
import '../../../core/constants/cache/cache_constants.dart';
import '../../../core/constants/enums/navigation_enums.dart';
import '../../../core/constants/enums/network_connectivity_enums.dart';
import '../../../core/init/cache/app_cache_manager.dart';
import '../../../core/init/cache/cache_manager_interface.dart';
import '../../../core/init/lang/language_manager.dart';
import '../../../core/init/network/connectivity/network_connectivity.dart';
import '../../../core/init/network/connectivity/network_connectivity_interface.dart';
import '../../../product/model/app_cache_model.dart';
import '../model/drivers_model.dart';
import '../model/drivers_response_model.dart';
import '../service/drivers_service.dart';
import '../service/drivers_service_interface.dart';

part 'drivers_view_model.g.dart';

class DriversViewModel = _DriversViewModelBase with _$DriversViewModel;

abstract class _DriversViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => baseContext = context;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  late IDriversService driversService;
  late CacheManagerInterface<AppCacheModel> cacheManager;
  late NetworkConnectivityInterface networkConnectivity;

  AppCacheModel? appCacheModel;

  @observable
  Locale appLocale = LanguageManager.instance.enLocale;

  @observable
  bool isLoading = false;

  @observable
  bool isFetching = false;

  @observable
  DriverResponseModel? driverResponseModel;

  @observable
  NetworkConnectivityEnums? networkConnectivityEnums;

  @observable
  int currentIndex = 0;

  @override
  void init() {
    driversService = DriversService(networkService.networkManager, scaffoldKey);
    networkConnectivity = NetworkConnectivity();
    cacheManager = AppCacheManager(CacheConstants.appCache);
    checkFirstTimeInternetConnection();
  }

  @action
  void _changeLoading() => isLoading = !isLoading;

  @action
  void _changeFetcing() => isFetching = !isFetching;

  @action
  Future<void> getUserDriver() async {
    _changeLoading();
    await cacheManager.init();
    appCacheModel = getUserData();
    driverResponseModel = await driversService
        .fetchDrivers(DriversModel(appCacheModel?.favoriteDriver));
    _changeLoading();
  }

  Future<void> clearData() async {
    _changeLoading();
    await cacheManager.init();
    await cacheManager.clear();
    navigation.router.go(NavigationEnums.onBoardView.routeName);
    _changeLoading();
  }

  @action
  Future<void> changeAppLocale(Locale locale) async {
    _changeLoading();
    appLocale = locale;
    await baseContext.setLocale(locale);
    _changeLoading();
  }

  @action
  Future<void> checkFirstTimeInternetConnection() async =>
      networkConnectivityEnums =
          await networkConnectivity.checkNetworkConnectivity();

  AppCacheModel? getUserData() => cacheManager.getItem(CacheConstants.appCache);
}
