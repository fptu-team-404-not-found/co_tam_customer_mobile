import 'package:json_annotation/json_annotation.dart';

part 'work_in_order.g.dart';

@JsonSerializable(explicitToJson: true)
class WorkInOrder {
  Data? data;
  bool? success;
  String? message;
  int? statusCode;

  WorkInOrder({this.data, this.success, this.message, this.statusCode});
  factory WorkInOrder.fromJson(Map<String, dynamic> json) => _$WorkInOrderFromJson(json);

  Map<String, dynamic> toJson() => _$WorkInOrderToJson(this);
}
@JsonSerializable()
class Data {
  int? id;
  int? houseWorkerId;
  int? orderId;
  double? rating;
  HouseWorker? houseWorker;
  Order? order;

  Data(
      {this.id,
        this.houseWorkerId,
        this.orderId,
        this.rating,
        this.houseWorker,
        this.order});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
@JsonSerializable()
class Order {
  int? id;
  String? endTime;
  String? dateTime;
  int? subTotal;
  int? total;
  int? houseId;
  int? packageId;
  int? promotionId;
  int? paymentMethodId;
  int? orderState;
  House? house;

  Order(
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
        this.house,});
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

}

@JsonSerializable()
class House {
  int? id;
  String? number;
  bool? active;
  int? customerId;
  int? buildingId;
  Building? building;

  House(
      {this.id,
        this.number,
        this.active,
        this.customerId,
        this.buildingId,
        this.building,
      });

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
        this.city,
      });
  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);

  Map<String, dynamic> toJson() => _$AreaToJson(this);

}



@JsonSerializable()
class HouseWorker {
  int? id;
  String? name;
  String? phone;
  DateTime? dateOfBirth;
  String? email;
  String? linkFacebook;
  String? avatar;
  int? active;
  int? areaId;
  int? managerId;

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
        this.managerId,});

  factory HouseWorker.fromJson(Map<String, dynamic> json) => _$HouseWorkerFromJson(json);

  Map<String, dynamic> toJson() => _$HouseWorkerToJson(this);
}
