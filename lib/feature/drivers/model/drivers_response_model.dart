import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'drivers_response_model.g.dart';

@JsonSerializable()
class DriverResponseModel extends INetworkModel<DriverResponseModel> {
  @JsonKey(name: 'driverId')
  final String? driverId;
  @JsonKey(name: 'permanentNumber')
  final String? permanentNumber;
  final String? code;
  final String? url;
  @JsonKey(name: 'givenName')
  final String? givenName;
  @JsonKey(name: 'familyName')
  final String? familyName;
  @JsonKey(name: 'dateOfBirth')
  final String? dateOfBirth;
  final String? nationality;

  DriverResponseModel(
      {this.driverId,
      this.permanentNumber,
      this.code,
      this.url,
      this.givenName,
      this.familyName,
      this.dateOfBirth,
      this.nationality});

  @override
  DriverResponseModel fromJson(Map<String, dynamic> json) {
    return _$DriverResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return _$DriverResponseModelToJson(this);
  }
}
