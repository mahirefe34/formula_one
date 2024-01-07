import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

import '../model/drivers_model.dart';
import '../model/drivers_response_model.dart';

abstract class IDriversService {
  final INetworkManager manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  IDriversService(this.manager, this.scaffoldKey);

  Future<DriverResponseModel?> fetchDrivers(DriversModel driversModel);
}
