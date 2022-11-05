import 'package:json_annotation/json_annotation.dart';

part 'user_info.g.dart';

@JsonSerializable(explicitToJson: true)
class UserInfo {
  Data? data;
  bool? success;
  String? message;
  int? statusCode;

  UserInfo({this.data, this.success, this.message, this.statusCode});

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
@JsonSerializable()
class Data {
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
  List<Houses>? houses;

  Data(
      {this.id,
        this.name,
        this.phone,
        this.dateOfBirth,
        this.email,
        this.linkFacebook,
        this.avatar,
        this.eWallet,
        this.active,
        this.customerPromotions,
        this.houses});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
@JsonSerializable()
class CustomerPromotions {
  int? id;
  bool? isUsed;
  int? customerId;
  int? promotionId;
  String? customer;
  Promotion? promotion;

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
class Promotion {
  int? id;
  String? code;
  String? description;
  int? value;
  int? discount;
  int? amount;
  String? startDate;
  String? endDate;
  bool? active;
  String? image;
  List<String>? customerPromotions;
  List<Orders>? orders;

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
        this.customerPromotions,
        this.orders});

  factory Promotion.fromJson(Map<String, dynamic> json) => _$PromotionFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionToJson(this);
}
@JsonSerializable()
class Orders {
  int? id;
  String? dateTime;
  int? subTotal;
  int? total;
  int? houseId;
  int? packageId;
  int? promotionId;
  int? paymentMethodId;
  int? orderState;
  String? house;
  Package? package;
  PaymentMethod? paymentMethod;
  String? promotion;
  List<OrderDetails>? orderDetails;
  List<WorkerInOrders>? workerInOrders;

  Orders(
      {this.id,
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
        this.orderDetails,
        this.workerInOrders});
  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersToJson(this);
}
@JsonSerializable()
class Package {
  int? id;
  String? name;
  int? duration;
  int? active;
  int? serviceId;
  int? price;
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
  List<String>? packages;

  Service(
      {this.id,
        this.name,
        this.description,
        this.active,
        this.extraServices,
        this.packages});
  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceToJson(this);

}
@JsonSerializable()
class ExtraServices {
  int? id;
  String? name;
  String? description;
  int? price;
  int? active;
  int? serviceId;
  String? service;
  List<String>? orderDetails;

  ExtraServices(
      {this.id,
        this.name,
        this.description,
        this.price,
        this.active,
        this.serviceId,
        this.service,
        this.orderDetails});

  factory ExtraServices.fromJson(Map<String, dynamic> json) => _$ExtraServicesFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraServicesToJson(this);
}
@JsonSerializable()
class PaymentMethod {
  int? id;
  String? name;
  bool? active;
  List<String>? orders;

  PaymentMethod({this.id, this.name, this.active, this.orders});

  factory PaymentMethod.fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);

}
@JsonSerializable()
class OrderDetails {
  int? id;
  int? extraServiceId;
  int? orderId;
  ExtraServices? extraService;
  String? order;

  OrderDetails(
      {this.id,
        this.extraServiceId,
        this.orderId,
        this.extraService,
        this.order});

  factory OrderDetails.fromJson(Map<String, dynamic> json) => _$OrderDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsToJson(this);
}
@JsonSerializable()
class WorkerInOrders {
  int? id;
  int? houseWorkerId;
  int? orderId;
  int? rating;
  HouseWorker? houseWorker;
  String? order;

  WorkerInOrders(
      {this.id,
        this.houseWorkerId,
        this.orderId,
        this.rating,
        this.houseWorker,
        this.order});

  factory WorkerInOrders.fromJson(Map<String, dynamic> json) => _$WorkerInOrdersFromJson(json);

  Map<String, dynamic> toJson() => _$WorkerInOrdersToJson(this);
}
@JsonSerializable()
class HouseWorker {
  int? id;
  String? name;
  String? phone;
  String? dateOfBirth;
  String? email;
  String? linkFacebook;
  String? avatar;
  int? active;
  int? areaId;
  int? managerId;
  Manager? manager;
  List<String>? workerInOrders;
  List<WorkerTags>? workerTags;

  HouseWorker(
      {this.id,
        this.name,
        this.phone,
        this.dateOfBirth,
        this.email,
        this.linkFacebook,
        this.avatar,
        this.active,
        this.areaId,
        this.managerId,
        this.manager,
        this.workerInOrders,
        this.workerTags});

  factory HouseWorker.fromJson(Map<String, dynamic> json) => _$HouseWorkerFromJson(json);

  Map<String, dynamic> toJson() => _$HouseWorkerToJson(this);
}
@JsonSerializable()
class Manager {
  int? id;
  String? name;
  String? phone;
  String? dateOfBirth;
  String? email;
  String? linkFacebook;
  String? avatar;
  bool? active;
  int? roleId;
  Role? role;
  List<String>? houseWorkers;

  Manager(
      {this.id,
        this.name,
        this.phone,
        this.dateOfBirth,
        this.email,
        this.linkFacebook,
        this.avatar,
        this.active,
        this.roleId,
        this.role,
        this.houseWorkers});

  factory Manager.fromJson(Map<String, dynamic> json) => _$ManagerFromJson(json);

  Map<String, dynamic> toJson() => _$ManagerToJson(this);

}
@JsonSerializable()
class Role {
  int? id;
  String? name;
  List<String>? adminManagers;

  Role({this.id, this.name, this.adminManagers});

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  Map<String, dynamic> toJson() => _$RoleToJson(this);

}
@JsonSerializable()
class WorkerTags {
  int? id;
  String? name;
  int? houseWorkerId;
  String? houseWorker;

  WorkerTags({this.id, this.name, this.houseWorkerId, this.houseWorker});

  factory WorkerTags.fromJson(Map<String, dynamic> json) => _$WorkerTagsFromJson(json);

  Map<String, dynamic> toJson() => _$WorkerTagsToJson(this);
}
@JsonSerializable()
class Houses {
  int? id;
  String? number;
  bool? active;
  int? customerId;
  int? buildingId;
  Building? building;
  String? customer;
  List<Orders>? orders;

  Houses(
      {this.id,
        this.number,
        this.active,
        this.customerId,
        this.buildingId,
        this.building,
        this.customer,
        this.orders});

  factory Houses.fromJson(Map<String, dynamic> json) => _$HousesFromJson(json);

  Map<String, dynamic> toJson() => _$HousesToJson(this);
}
@JsonSerializable()
class Building {
  int? id;
  String? name;
  bool? active;
  int? areaId;
  Area? area;
  List<String>? houses;

  Building(
      {this.id, this.name, this.active, this.areaId, this.area, this.houses});

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
  List<String>? buildings;

  Area(
      {this.id,
        this.name,
        this.active,
        this.district,
        this.city,
        this.buildings});

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);

  Map<String, dynamic> toJson() => _$AreaToJson(this);
}
