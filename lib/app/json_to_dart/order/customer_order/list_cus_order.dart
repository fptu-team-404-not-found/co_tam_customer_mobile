import 'package:json_annotation/json_annotation.dart';

part 'list_cus_order.g.dart';

@JsonSerializable(explicitToJson: true)
class ListOrderOfCus {
  List<Data>? data;
  bool? success;
  String? message;
  int? statusCode;

  ListOrderOfCus({this.data, this.success, this.message, this.statusCode});

  factory ListOrderOfCus.fromJson(Map<String, dynamic> json) => _$ListOrderOfCusFromJson(json);

  Map<String, dynamic> toJson() => _$ListOrderOfCusToJson(this);
}
@JsonSerializable()
class Data {
  int? id;
  //Null? endTime;
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
  /*List<Null>? orderDetails;
  List<Null>? workerInOrders;*/

  Data(
      {this.id,
        //this.endTime,
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
        this.promotion,
        /*this.orderDetails,
        this.workerInOrders*/});
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
  //List<Null>? orders;

  House(
      {this.id,
        this.number,
        this.active,
        this.customerId,
        this.buildingId,
        this.building,
        this.customer,
        /*this.orders*/});
  factory House.fromJson(Map<String, dynamic> json) => _$HouseFromJson(json);

  Map<String, dynamic> toJson() => _$HouseToJson(this);

}
@JsonSerializable()
class Building {
  int? id;
  String? name;
  bool? active;
  int? areaId;
  //Null? area;
  List<Houses>? houses;

  Building(
      {this.id, this.name, this.active, this.areaId,/* this.area,*/ this.houses});

  factory Building.fromJson(Map<String, dynamic> json) => _$BuildingFromJson(json);

  Map<String, dynamic> toJson() => _$BuildingToJson(this);
}
@JsonSerializable()
class Houses {
  int? id;
  String? number;
  bool? active;
  int? customerId;
  int? buildingId;
  Customer? customer;
  //List<Null>? orders;

  Houses(
      {this.id,
        this.number,
        this.active,
        this.customerId,
        this.buildingId,
        this.customer,
        /*this.orders*/});

  factory Houses.fromJson(Map<String, dynamic> json) => _$HousesFromJson(json);

  Map<String, dynamic> toJson() => _$HousesToJson(this);

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
  /*List<Null>? customerPromotions;
  List<Null>? houses;*/

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
        /*this.customerPromotions,
        this.houses*/});

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}


@JsonSerializable()
class Package {
  int? id;
  String? name;
  int? duration;
  int? active;
  int? serviceId;
  double? price;
  /*List<null>? service;
  List<nul>? orders;*/

  Package(
      {this.id,
        this.name,
        this.duration,
        this.active,
        this.serviceId,
        this.price,
        /*this.service,
        this.orders*/});

  factory Package.fromJson(Map<String, dynamic> json) => _$PackageFromJson(json);

  Map<String, dynamic> toJson() => _$PackageToJson(this);


}
@JsonSerializable()
class PaymentMethod {
  int? id;
  String? name;
  bool? active;
  //List<null>? orders;

  PaymentMethod({this.id, this.name, this.active, /*this.orders*/});

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
  /*List<void>? customerPromotions;
  List<void>? orders;*/

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
        /*this.customerPromotions,
        this.orders*/});

  factory Promotion.fromJson(Map<String, dynamic> json) => _$PromotionFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionToJson(this);

}
