import 'package:vexana/vexana.dart';

import '../../../product/constants/enum/drivers_query_enums.dart';
import '../../../product/constants/enum/network_routes_enum.dart';
import '../../../product/utility/service_helper.dart';
import '../model/drivers_model.dart';
import '../model/drivers_response_model.dart';
import 'drivers_service_interface.dart';

class DriversService extends IDriversService with ServiceHelper {
  DriversService(super.manager, super.scaffoldKey);

  @override
  Future<DriverResponseModel?> fetchDrivers(DriversModel driversModel) async {
    final response = await manager.send(
      NetworkRoutesEnum.empty.routeName,
      parseModel: DriverResponseModel(),
      queryParameters: {
        DriversQueryEnum.year.query: driversModel.year,
      },
      method: RequestType.POST,
    );

    showMessage(scaffoldKey, response.error);
    return response.data;
  }
}
