// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfRating _$ListOfRatingFromJson(Map<String, dynamic> json) => ListOfRating(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$ListOfRatingToJson(ListOfRating instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'success': instance.success,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      houseWorkerId: json['houseWorkerId'] as int?,
      orderId: json['orderId'] as int?,
      rating: json['rating'] as int?,
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

HouseWorker _$HouseWorkerFromJson(Map<String, dynamic> json) => HouseWorker(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      email: json['email'] as String?,
      linkFacebook: json['linkFacebook'] as String?,
      avatar: json['avatar'] as String?,
      active: json['active'] as int?,
      areaId: json['areaId'] as int?,
      managerId: json['managerId'] as int?,
      workerInOrders: (json['workerInOrders'] as List<dynamic>?)
          ?.map((e) => WorkerInOrders.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HouseWorkerToJson(HouseWorker instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'dateOfBirth': instance.dateOfBirth,
      'email': instance.email,
      'linkFacebook': instance.linkFacebook,
      'avatar': instance.avatar,
      'active': instance.active,
      'areaId': instance.areaId,
      'managerId': instance.managerId,
      'workerInOrders': instance.workerInOrders,
    };

WorkerInOrders _$WorkerInOrdersFromJson(Map<String, dynamic> json) =>
    WorkerInOrders(
      id: json['id'] as int?,
      houseWorkerId: json['houseWorkerId'] as int?,
      orderId: json['orderId'] as int?,
      rating: json['rating'] as int?,
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkerInOrdersToJson(WorkerInOrders instance) =>
    <String, dynamic>{
      'id': instance.id,
      'houseWorkerId': instance.houseWorkerId,
      'orderId': instance.orderId,
      'rating': instance.rating,
      'order': instance.order,
    };

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int?,
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
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
      package: json['package'] == null
          ? null
          : Package.fromJson(json['package'] as Map<String, dynamic>),
      paymentMethod: json['paymentMethod'] == null
          ? null
          : PaymentMethod.fromJson(
              json['paymentMethod'] as Map<String, dynamic>),
      promotion: json['promotion'] == null
          ? null
          : Promotion.fromJson(json['promotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'endTime': instance.endTime?.toIso8601String(),
      'dateTime': instance.dateTime?.toIso8601String(),
      'subTotal': instance.subTotal,
      'total': instance.total,
      'houseId': instance.houseId,
      'packageId': instance.packageId,
      'promotionId': instance.promotionId,
      'paymentMethodId': instance.paymentMethodId,
      'orderState': instance.orderState,
      'house': instance.house,
      'package': instance.package,
      'paymentMethod': instance.paymentMethod,
      'promotion': instance.promotion,
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
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Orders.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HouseToJson(House instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'active': instance.active,
      'customerId': instance.customerId,
      'buildingId': instance.buildingId,
      'building': instance.building,
      'customer': instance.customer,
      'orders': instance.orders,
    };

Building _$BuildingFromJson(Map<String, dynamic> json) => Building(
      id: json['id'] as int?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
      areaId: json['areaId'] as int?,
      houses: (json['houses'] as List<dynamic>?)
          ?.map((e) => Houses.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BuildingToJson(Building instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'areaId': instance.areaId,
      'houses': instance.houses,
    };

Houses _$HousesFromJson(Map<String, dynamic> json) => Houses(
      id: json['id'] as int?,
      number: json['number'] as String?,
      active: json['active'] as bool?,
      customerId: json['customerId'] as int?,
      buildingId: json['buildingId'] as int?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HousesToJson(Houses instance) => <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'active': instance.active,
      'customerId': instance.customerId,
      'buildingId': instance.buildingId,
      'customer': instance.customer,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      email: json['email'] as String?,
      linkFacebook: json['linkFacebook'] as String?,
      avatar: json['avatar'] as String?,
      eWallet: json['eWallet'] as int?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'dateOfBirth': instance.dateOfBirth,
      'email': instance.email,
      'linkFacebook': instance.linkFacebook,
      'avatar': instance.avatar,
      'eWallet': instance.eWallet,
      'active': instance.active,
    };

Orders _$OrdersFromJson(Map<String, dynamic> json) => Orders(
      id: json['id'] as int?,
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      subTotal: json['subTotal'] as int?,
      total: json['total'] as int?,
      houseId: json['houseId'] as int?,
      packageId: json['packageId'] as int?,
      promotionId: json['promotionId'] as int?,
      paymentMethodId: json['paymentMethodId'] as int?,
      orderState: json['orderState'] as int?,
      package: json['package'] == null
          ? null
          : Package.fromJson(json['package'] as Map<String, dynamic>),
      paymentMethod: json['paymentMethod'] == null
          ? null
          : PaymentMethod.fromJson(
              json['paymentMethod'] as Map<String, dynamic>),
      promotion: json['promotion'] == null
          ? null
          : Promotion.fromJson(json['promotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersToJson(Orders instance) => <String, dynamic>{
      'id': instance.id,
      'endTime': instance.endTime?.toIso8601String(),
      'dateTime': instance.dateTime?.toIso8601String(),
      'subTotal': instance.subTotal,
      'total': instance.total,
      'houseId': instance.houseId,
      'packageId': instance.packageId,
      'promotionId': instance.promotionId,
      'paymentMethodId': instance.paymentMethodId,
      'orderState': instance.orderState,
      'package': instance.package,
      'paymentMethod': instance.paymentMethod,
      'promotion': instance.promotion,
    };

Package _$PackageFromJson(Map<String, dynamic> json) => Package(
      id: json['id'] as int?,
      name: json['name'] as String?,
      duration: json['duration'] as int?,
      active: json['active'] as int?,
      serviceId: json['serviceId'] as int?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$PackageToJson(Package instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'active': instance.active,
      'serviceId': instance.serviceId,
      'price': instance.price,
    };

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      id: json['id'] as int?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
    };

Promotion _$PromotionFromJson(Map<String, dynamic> json) => Promotion(
      id: json['id'] as int?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      value: json['value'] as int?,
      discount: json['discount'] as int?,
      amount: json['amount'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      active: json['active'] as bool?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$PromotionToJson(Promotion instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'value': instance.value,
      'discount': instance.discount,
      'amount': instance.amount,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'active': instance.active,
      'image': instance.image,
    };
