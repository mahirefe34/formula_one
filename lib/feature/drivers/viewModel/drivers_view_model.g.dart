// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DriversViewModel on _DriversViewModelBase, Store {
  late final _$appLocaleAtom =
      Atom(name: '_DriversViewModelBase.appLocale', context: context);

  @override
  Locale get appLocale {
    _$appLocaleAtom.reportRead();
    return super.appLocale;
  }

  @override
  set appLocale(Locale value) {
    _$appLocaleAtom.reportWrite(value, super.appLocale, () {
      super.appLocale = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_DriversViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isFetchingAtom =
      Atom(name: '_DriversViewModelBase.isFetching', context: context);

  @override
  bool get isFetching {
    _$isFetchingAtom.reportRead();
    return super.isFetching;
  }

  @override
  set isFetching(bool value) {
    _$isFetchingAtom.reportWrite(value, super.isFetching, () {
      super.isFetching = value;
    });
  }

  late final _$driverResponseModelAtom =
      Atom(name: '_DriversViewModelBase.driverResponseModel', context: context);

  @override
  DriverResponseModel? get driverResponseModel {
    _$driverResponseModelAtom.reportRead();
    return super.driverResponseModel;
  }

  @override
  set driverResponseModel(DriverResponseModel? value) {
    _$driverResponseModelAtom.reportWrite(value, super.driverResponseModel, () {
      super.driverResponseModel = value;
    });
  }

  late final _$networkConnectivityEnumsAtom = Atom(
      name: '_DriversViewModelBase.networkConnectivityEnums', context: context);

  @override
  NetworkConnectivityEnums? get networkConnectivityEnums {
    _$networkConnectivityEnumsAtom.reportRead();
    return super.networkConnectivityEnums;
  }

  @override
  set networkConnectivityEnums(NetworkConnectivityEnums? value) {
    _$networkConnectivityEnumsAtom
        .reportWrite(value, super.networkConnectivityEnums, () {
      super.networkConnectivityEnums = value;
    });
  }

  late final _$currentIndexAtom =
      Atom(name: '_DriversViewModelBase.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$getUserDriverAsyncAction =
      AsyncAction('_DriversViewModelBase.getUserDriver', context: context);

  @override
  Future<void> getUserDriver() {
    return _$getUserDriverAsyncAction.run(() => super.getUserDriver());
  }

  late final _$changeAppLocaleAsyncAction =
      AsyncAction('_DriversViewModelBase.changeAppLocale', context: context);

  @override
  Future<void> changeAppLocale(Locale locale) {
    return _$changeAppLocaleAsyncAction
        .run(() => super.changeAppLocale(locale));
  }

  late final _$checkFirstTimeInternetConnectionAsyncAction = AsyncAction(
      '_DriversViewModelBase.checkFirstTimeInternetConnection',
      context: context);

  @override
  Future<void> checkFirstTimeInternetConnection() {
    return _$checkFirstTimeInternetConnectionAsyncAction
        .run(() => super.checkFirstTimeInternetConnection());
  }

  late final _$_DriversViewModelBaseActionController =
      ActionController(name: '_DriversViewModelBase', context: context);

  @override
  void _changeLoading() {
    final _$actionInfo = _$_DriversViewModelBaseActionController.startAction(
        name: '_DriversViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_DriversViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _changeFetcing() {
    final _$actionInfo = _$_DriversViewModelBaseActionController.startAction(
        name: '_DriversViewModelBase._changeFetcing');
    try {
      return super._changeFetcing();
    } finally {
      _$_DriversViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
appLocale: ${appLocale},
isLoading: ${isLoading},
isFetching: ${isFetching},
driverResponseModel: ${driverResponseModel},
networkConnectivityEnums: ${networkConnectivityEnums},
currentIndex: ${currentIndex}
    ''';
  }
}
