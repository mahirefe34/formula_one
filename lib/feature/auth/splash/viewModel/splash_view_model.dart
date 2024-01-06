// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/viewModel/base_view_model.dart';
import '../../../../core/constants/cache/cache_constants.dart';
import '../../../../core/constants/enums/navigation_enums.dart';
import '../../../../core/init/cache/app_cache_manager.dart';
import '../../../../core/init/cache/cache_manager_interface.dart';
import '../../../../core/extensions/context_duration_extension.dart';

import '../../../../product/model/app_cache_model.dart';

part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => baseContext = context;

  late final CacheManagerInterface<AppCacheModel> cacheManager;

  List<AppCacheModel>? appCacheModelList;

  @observable
  bool? isFirstOpen;

  @override
  void init() {
    cacheManager = AppCacheManager(CacheConstants.appCache);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controlAppState(baseContext.duration.durationSlow);
    });
  }

  Future<void> controlAppState(Duration duration) async {
    await getUserData();
    await checkIsFirstOpen(duration);
  }

  Future<void> getUserData() async {
    await cacheManager.init();
    appCacheModelList = cacheManager.getAllItems();
    appCacheModelList!.isNotEmpty //! Some check for .isNotNullOrEmpty
        ? isFirstOpen = appCacheModelList!.first.isFirstInit
        : isFirstOpen = true;
  }

  Future<void> checkIsFirstOpen(Duration duration) async {
    isFirstOpen == false
        ? await Future.delayed(duration).then((value) {
            navigation.router.go(NavigationEnums.driversView.routeName);
          })
        : await Future.delayed(duration).then((value) {
            navigation.router.go(NavigationEnums.onBoardView.routeName);
          });
  }
}
