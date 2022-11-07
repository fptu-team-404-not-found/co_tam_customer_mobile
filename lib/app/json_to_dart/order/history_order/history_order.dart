import 'package:json_annotation/json_annotation.dart';

part 'history_order.g.dart';

@JsonSerializable(explicitToJson: true)
class HisOrderOfCus {
  List<Data>? data;
  bool? success;
  String? message;
  int? statusCode;

  HisOrderOfCus({this.data, this.success, this.message, this.statusCode});

  factory HisOrderOfCus.fromJson(Map<String, dynamic> json) => _$HisOrderOfCusFromJson(json);

  Map<String, dynamic> toJson() => _$HisOrderOfCusToJson(this);

}
@JsonSerializable()
class Data {
  int? id;
  String? endTime;
  String? dateTime;
  double? subTotal;
  double? total;
  int? houseId;
  int? packageId;
  int? promotionId;
  int? paymentMethodId;
  int? orderState;
  House? house;
  Package? package;
  PaymentMethod? paymentMethod;
  Promotion? promotion;

  Data(
      {this.id,
        this.endTime,
        this.dateTime,
        this.subTotal,
        this.total,
        this.houseId,
        this.packageId,
        this.promotionId,
        this.paymentMethodId,
        this.orderState,
        this.house,
        this.package,
        this.paymentMethod,
        this.promotion});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}
@JsonSerializable()
class House {
  int? id;
  String? number;
  bool? active;
  int? customerId;
  int? buildingId;
  Building? building;
  Customer? customer;

  House(
      {this.id,
        this.number,
        this.active,
        this.customerId,
        this.buildingId,
        this.building,
        this.customer});

  factory House.fromJson(Map<String, dynamic> json) => _$HouseFromJson(json);

  Map<String, dynamic> toJson() => _$HouseToJson(this);

}
@JsonSerializable()
class Building {
  int? id;
  String? name;
  bool? active;
  int? areaId;
  Area? area;

  Building(
      {this.id, this.name, this.active, this.areaId, this.area});

  factory Building.fromJson(Map<String, dynamic> json) => _$BuildingFromJson(json);

  Map<String, dynamic> toJson() => _$BuildingToJson(this);
}
@JsonSerializable()
class Area {
  int? id;
  String? name;
  bool? active;
  String? district;
  String? city;

  Area(
      {this.id,
        this.name,
        this.active,
        this.district,
        this.city,});

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);

  Map<String, dynamic> toJson() => _$AreaToJson(this);

}

@JsonSerializable()
class Customer {
  int? id;
  String? name;
  String? phone;
  String? dateOfBirth;
  String? email;
  String? linkFacebook;
  String? avatar;
  double? eWallet;
  bool? active;
  List<CustomerPromotions>? customerPromotions;

  Customer(
      {this.id,
        this.name,
        this.phone,
        this.dateOfBirth,
        this.email,
        this.linkFacebook,
        this.avatar,
        this.eWallet,
        this.active,
        this.customerPromotions});


  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);

}@JsonSerializable()
class CustomerPromotions {
  int? id;
  bool? isUsed;
  int? customerId;
  int? promotionId;
  String? customer;
  String? promotion;

  CustomerPromotions(
      {this.id,
        this.isUsed,
        this.customerId,
        this.promotionId,
        this.customer,
        this.promotion});


  factory CustomerPromotions.fromJson(Map<String, dynamic> json) => _$CustomerPromotionsFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerPromotionsToJson(this);

}

@JsonSerializable()
class Package {
  int? id;
  String? name;
  int? duration;
  int? active;
  int? serviceId;
  double? price;
  Service? service;
  List<String>? orders;

  Package(
      {this.id,
        this.name,
        this.duration,
        this.active,
        this.serviceId,
        this.price,
        this.service,
        this.orders});

  factory Package.fromJson(Map<String, dynamic> json) => _$PackageFromJson(json);

  Map<String, dynamic> toJson() => _$PackageToJson(this);


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
  String? service;

  ExtraServices(
      {this.id,
        this.name,
        this.description,
        this.price,
        this.active,
        this.serviceId,
        this.service});

  factory ExtraServices.fromJson(Map<String, dynamic> json) => _$ExtraServicesFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraServicesToJson(this);

}

@JsonSerializable()
class PaymentMethod {
  int? id;
  String? name;
  bool? active;

  PaymentMethod({this.id, this.name, this.active});

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);

}
@JsonSerializable()
class Promotion {
  int? id;
  String? code;
  String? description;
  double? value;
  double? discount;
  int? amount;
  String? startDate;
  String? endDate;
  bool? active;
  String? image;
  List<CustomerPromotions>? customerPromotions;

  Promotion(
      {this.id,
        this.code,
        this.description,
        this.value,
        this.discount,
        this.amount,
        this.startDate,
        this.endDate,
        this.active,
        this.image,
        this.customerPromotions,});

  factory Promotion.fromJson(Map<String, dynamic> json) => _$PromotionFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionToJson(this);

}
