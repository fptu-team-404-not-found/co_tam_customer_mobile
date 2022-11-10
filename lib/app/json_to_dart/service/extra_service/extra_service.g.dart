// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListEstraService _$ListEstraServiceFromJson(Map<String, dynamic> json) =>
    ListEstraService(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$ListEstraServiceToJson(ListEstraService instance) =>
    <String, dynamic>{
      'data': instance.data,
      'success': instance.success,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      active: json['active'] as int?,
      serviceId: json['serviceId'] as int?,
      service: json['service'] == null
          ? null
          : Service.fromJson(json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'active': instance.active,
      'serviceId': instance.serviceId,
      'service': instance.service,
    };

Service _$ServiceFromJson(Map<String, dynamic> json) => Service(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      active: json['active'] as int?,
      extraServices: (json['extraServices'] as List<dynamic>?)
          ?.map((e) => ExtraServices.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'extraServices': instance.extraServices,
    };

ExtraServices _$ExtraServicesFromJson(Map<String, dynamic> json) =>
    ExtraServices(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      active: json['active'] as int?,
      serviceId: json['serviceId'] as int?,
    );

Map<String, dynamic> _$ExtraServicesToJson(ExtraServices instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'active': instance.active,
      'serviceId': instance.serviceId,
    };
