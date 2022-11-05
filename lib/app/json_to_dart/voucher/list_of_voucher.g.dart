// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfVoucher _$ListOfVoucherFromJson(Map<String, dynamic> json) =>
    ListOfVoucher(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$ListOfVoucherToJson(ListOfVoucher instance) =>
    <String, dynamic>{
      'data': instance.data,
      'success': instance.success,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      value: (json['value'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      amount: json['amount'] as int?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      active: json['active'] as bool?,
      image: json['image'] as String?,
      customerPromotions: (json['customerPromotions'] as List<dynamic>?)
          ?.map((e) => CustomerPromotions.fromJson(e as Map<String, dynamic>))
          .toList(),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Orders.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
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
      'customerPromotions': instance.customerPromotions,
      'orders': instance.orders,
    };

CustomerPromotions _$CustomerPromotionsFromJson(Map<String, dynamic> json) =>
    CustomerPromotions(
      id: json['id'] as int?,
      isUsed: json['isUsed'] as bool?,
      customerId: json['customerId'] as int?,
      promotionId: json['promotionId'] as int?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      promotion: json['promotion'] as String?,
    );

Map<String, dynamic> _$CustomerPromotionsToJson(CustomerPromotions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isUsed': instance.isUsed,
      'customerId': instance.customerId,
      'promotionId': instance.promotionId,
      'customer': instance.customer,
      'promotion': instance.promotion,
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
      customerPromotions: (json['customerPromotions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      houses: (json['houses'] as List<dynamic>?)
          ?.map((e) => Houses.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'customerPromotions': instance.customerPromotions,
      'houses': instance.houses,
    };

Houses _$HousesFromJson(Map<String, dynamic> json) => Houses(
      id: json['id'] as int?,
      number: json['number'] as String?,
      active: json['active'] as bool?,
      customerId: json['customerId'] as int?,
      buildingId: json['buildingId'] as int?,
      building: json['building'] == null
          ? null
          : Building.fromJson(json['building'] as Map<String, dynamic>),
      customer: json['customer'] as String?,
      orders:
          (json['orders'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$HousesToJson(Houses instance) => <String, dynamic>{
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
      area: json['area'] == null
          ? null
          : Area.fromJson(json['area'] as Map<String, dynamic>),
      houses:
          (json['houses'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$BuildingToJson(Building instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'areaId': instance.areaId,
      'area': instance.area,
      'houses': instance.houses,
    };

Area _$AreaFromJson(Map<String, dynamic> json) => Area(
      id: json['id'] as int?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      buildings: (json['buildings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'district': instance.district,
      'city': instance.city,
      'buildings': instance.buildings,
    };

Orders _$OrdersFromJson(Map<String, dynamic> json) => Orders(
      id: json['id'] as int?,
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
          : Houses.fromJson(json['house'] as Map<String, dynamic>),
      package: json['package'] == null
          ? null
          : Package.fromJson(json['package'] as Map<String, dynamic>),
      paymentMethod: json['paymentMethod'] == null
          ? null
          : PaymentMethod.fromJson(
              json['paymentMethod'] as Map<String, dynamic>),
      promotion: json['promotion'] as String?,
      orderDetails: (json['orderDetails'] as List<dynamic>?)
          ?.map((e) => OrderDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      workerInOrders: (json['workerInOrders'] as List<dynamic>?)
          ?.map((e) => WorkerInOrders.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdersToJson(Orders instance) => <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime,
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
      'orderDetails': instance.orderDetails,
      'workerInOrders': instance.workerInOrders,
    };

Package _$PackageFromJson(Map<String, dynamic> json) => Package(
      id: json['id'] as int?,
      name: json['name'] as String?,
      duration: json['duration'] as int?,
      active: json['active'] as int?,
      serviceId: json['serviceId'] as int?,
      price: json['price'] as int?,
      service: json['service'] == null
          ? null
          : Service.fromJson(json['service'] as Map<String, dynamic>),
      orders:
          (json['orders'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PackageToJson(Package instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'active': instance.active,
      'serviceId': instance.serviceId,
      'price': instance.price,
      'service': instance.service,
      'orders': instance.orders,
    };

Service _$ServiceFromJson(Map<String, dynamic> json) => Service(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      active: json['active'] as int?,
      extraServices: (json['extraServices'] as List<dynamic>?)
          ?.map((e) => ExtraServices.fromJson(e as Map<String, dynamic>))
          .toList(),
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'extraServices': instance.extraServices,
      'packages': instance.packages,
    };

ExtraServices _$ExtraServicesFromJson(Map<String, dynamic> json) =>
    ExtraServices(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
      active: json['active'] as int?,
      serviceId: json['serviceId'] as int?,
      service: json['service'] as String?,
      orderDetails: (json['orderDetails'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ExtraServicesToJson(ExtraServices instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'active': instance.active,
      'serviceId': instance.serviceId,
      'service': instance.service,
      'orderDetails': instance.orderDetails,
    };

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      id: json['id'] as int?,
      name: json['name'] as String?,
      active: json['active'] as bool?,
      orders:
          (json['orders'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active': instance.active,
      'orders': instance.orders,
    };

OrderDetails _$OrderDetailsFromJson(Map<String, dynamic> json) => OrderDetails(
      id: json['id'] as int?,
      extraServiceId: json['extraServiceId'] as int?,
      orderId: json['orderId'] as int?,
      extraService: json['extraService'] == null
          ? null
          : ExtraServices.fromJson(
              json['extraService'] as Map<String, dynamic>),
      order: json['order'] as String?,
    );

Map<String, dynamic> _$OrderDetailsToJson(OrderDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'extraServiceId': instance.extraServiceId,
      'orderId': instance.orderId,
      'extraService': instance.extraService,
      'order': instance.order,
    };

WorkerInOrders _$WorkerInOrdersFromJson(Map<String, dynamic> json) =>
    WorkerInOrders(
      id: json['id'] as int?,
      houseWorkerId: json['houseWorkerId'] as int?,
      orderId: json['orderId'] as int?,
      rating: json['rating'] as int?,
      houseWorker: json['houseWorker'] == null
          ? null
          : HouseWorker.fromJson(json['houseWorker'] as Map<String, dynamic>),
      order: json['order'] as String?,
    );

Map<String, dynamic> _$WorkerInOrdersToJson(WorkerInOrders instance) =>
    <String, dynamic>{
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
      manager: json['manager'] == null
          ? null
          : Manager.fromJson(json['manager'] as Map<String, dynamic>),
      workerInOrders: (json['workerInOrders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      workerTags: (json['workerTags'] as List<dynamic>?)
          ?.map((e) => WorkerTags.fromJson(e as Map<String, dynamic>))
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
      'manager': instance.manager,
      'workerInOrders': instance.workerInOrders,
      'workerTags': instance.workerTags,
    };

Manager _$ManagerFromJson(Map<String, dynamic> json) => Manager(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      email: json['email'] as String?,
      linkFacebook: json['linkFacebook'] as String?,
      avatar: json['avatar'] as String?,
      active: json['active'] as bool?,
      roleId: json['roleId'] as int?,
      role: json['role'] == null
          ? null
          : Role.fromJson(json['role'] as Map<String, dynamic>),
      houseWorkers: (json['houseWorkers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ManagerToJson(Manager instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'dateOfBirth': instance.dateOfBirth,
      'email': instance.email,
      'linkFacebook': instance.linkFacebook,
      'avatar': instance.avatar,
      'active': instance.active,
      'roleId': instance.roleId,
      'role': instance.role,
      'houseWorkers': instance.houseWorkers,
    };

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      id: json['id'] as int?,
      name: json['name'] as String?,
      adminManagers: (json['adminManagers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adminManagers': instance.adminManagers,
    };

WorkerTags _$WorkerTagsFromJson(Map<String, dynamic> json) => WorkerTags(
      id: json['id'] as int?,
      name: json['name'] as String?,
      houseWorkerId: json['houseWorkerId'] as int?,
      houseWorker: json['houseWorker'] as String?,
    );

Map<String, dynamic> _$WorkerTagsToJson(WorkerTags instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'houseWorkerId': instance.houseWorkerId,
      'houseWorker': instance.houseWorker,
    };
