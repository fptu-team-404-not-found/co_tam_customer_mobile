import 'package:json_annotation/json_annotation.dart';
part 'list_package.g.dart';

@JsonSerializable()
class ListOfPackage  {
  List<Data>? data;
  bool? success;
  String? message;
  int? statusCode;

  ListOfPackage ({this.data, this.success, this.message, this.statusCode});

  factory ListOfPackage.fromJson(Map<String, dynamic> json) => _$ListOfPackageFromJson(json);

  Map<String, dynamic> toJson() => _$ListOfPackageToJson(this);

}
@JsonSerializable()
class Data {
  int? id;
  String? name;
  int? duration;
  int? active;
  int? serviceId;
  double? price;
  Service? service;

  Data(
      {this.id,
        this.name,
        this.duration,
        this.active,
        this.serviceId,
        this.price,
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
  List<Packages>? packages;

  Service(
      {this.id,
        this.name,
        this.description,
        this.active,
        this.packages});

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceToJson(this);


}
@JsonSerializable()
class Packages {
  int? id;
  String? name;
  int? duration;
  int? active;
  int? serviceId;
  double? price;

  Packages(
      {this.id,
        this.name,
        this.duration,
        this.active,
        this.serviceId,
        this.price,});
  factory Packages.fromJson(Map<String, dynamic> json) => _$PackagesFromJson(json);

  Map<String, dynamic> toJson() => _$PackagesToJson(this);

}

