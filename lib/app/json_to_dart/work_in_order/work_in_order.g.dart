// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_in_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkInOrder _$WorkInOrderFromJson(Map<String, dynamic> json) => WorkInOrder(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      success: json['success'] as bool?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$WorkInOrderToJson(WorkInOrder instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'success': instance.success,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      houseWorkerId: json['houseWorkerId'] as int?,
      orderId: json['orderId'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      houseWorker: json['houseWorker'] == null
          ? null
          : HouseWorker.fromJson(json['houseWorker'] as Map<String, dynamic>),
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'houseWorkerId': instance.houseWorkerId,
      'orderId': instance.orderId,
      'rating': instance.rating,
      'houseWorker': instance.houseWorker,
      'order': instance.order,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int?,
      endTime: json['endTime'] as String?,
      dateTime: json['dateTime'] as String?,
      subTotal: json['subTotal'] as int?,
      total: json['total'] as int?,
      houseId: json['houseId'] as int?,
      packageId: json['packageId'] as int?,
      promotionId: json['promotionId'] as int?,
      paymentMethodId: json['paymentMethodId'] as int?,
      orderState: json['orderState'] as int?,
      house: json['house'] == null
          ? null
          : House.fromJson(json['house'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'endTime': instance.endTime,
      'dateTime': instance.dateTime,
      'subTotal': instance.subTotal,
      'total': instance.total,
      'houseId': instance.houseId,
      'packageId': instance.packageId,
      'promotionId': instance.promotionId,
      'paymentMethodId': instance.paymentMethodId,
      'orderState': instance.orderState,
      'house': instance.house,
    };

House _$HouseFromJson(Map<String, dynamic> json) => House(
      id: json['id'] as int?,
      number: json['number'] as String?,
      active: json['active'] as bool?,
      customerId: json['customerId'] as int?,
      buildingId: json['buildingId'] as int?,
      building: json['building'] == null
          ? null
          : Building.fromJson(json['building'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HouseToJson(House instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'active': instance.active,
      'customerId': instance.customerId,
      'buildingId': instance.buildingId,
      'building': instance.building,
    };

Building _$BuildingFromJson(Map<String, dynamic> json) => Building(
      id: json['id'] as int?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
      areaId: json['areaId'] as int?,
      area: json['area'] == null
          ? null
          : Area.fromJson(json['area'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BuildingToJson(Building instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'areaId': instance.areaId,
      'area': instance.area,
    };

Area _$AreaFromJson(Map<String, dynamic> json) => Area(
      id: json['id'] as int?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
      district: json['district'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'district': instance.district,
      'city': instance.city,
    };

HouseWorker _$HouseWorkerFromJson(Map<String, dynamic> json) => HouseWorker(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      email: json['email'] as String?,
      linkFacebook: json['linkFacebook'] as String?,
      avatar: json['avatar'] as String?,
      active: json['active'] as int?,
      areaId: json['areaId'] as int?,
      managerId: json['managerId'] as int?,
    );

Map<String, dynamic> _$HouseWorkerToJson(HouseWorker instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'email': instance.email,
      'linkFacebook': instance.linkFacebook,
      'avatar': instance.avatar,
      'active': instance.active,
      'areaId': instance.areaId,
      'managerId': instance.managerId,
    };
