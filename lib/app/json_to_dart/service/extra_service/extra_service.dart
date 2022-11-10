import 'package:json_annotation/json_annotation.dart';
part 'extra_service.g.dart';

@JsonSerializable()
class ListEstraService {
  List<Data>? data;
  bool? success;
  String? message;
  int? statusCode;

  ListEstraService({this.data, this.success, this.message, this.statusCode});

  factory ListEstraService.fromJson(Map<String, dynamic> json) => _$ListEstraServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ListEstraServiceToJson(this);

}
@JsonSerializable()
class Data {
  int? id;
  String? name;
  String? description;
  double? price;
  int? active;
  int? serviceId;
  Service? service;

  Data(
      {this.id,
        this.name,
        this.description,
        this.price,
        this.active,
        this.serviceId,
        this.service,});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}
@JsonSerializable()
class Service {
  int? id;
  String? name;
  String? description;
  int? active;
  List<ExtraServices>? extraServices;

  Service(
      {this.id,
        this.name,
        this.description,
        this.active,
        this.extraServices});
  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceToJson(this);


}
@JsonSerializable()
class ExtraServices {
  int? id;
  String? name;
  String? description;
  double? price;
  int? active;
  int? serviceId;

  ExtraServices(
      {this.id,
        this.name,
        this.description,
        this.price,
        this.active,
        this.serviceId});
  factory ExtraServices.fromJson(Map<String, dynamic> json) => _$ExtraServicesFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraServicesToJson(this);

}

