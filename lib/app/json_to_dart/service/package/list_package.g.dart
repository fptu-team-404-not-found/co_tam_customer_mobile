// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfPackage _$ListOfPackageFromJson(Map<String, dynamic> json) =>
    ListOfPackage(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$ListOfPackageToJson(ListOfPackage instance) =>
    <String, dynamic>{
      'data': instance.data,
      'success': instance.success,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      name: json['name'] as String?,
      duration: json['duration'] as int?,
      active: json['active'] as int?,
      serviceId: json['serviceId'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      service: json['service'] == null
          ? null
          : Service.fromJson(json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'active': instance.active,
      'serviceId': instance.serviceId,
      'price': instance.price,
      'service': instance.service,
    };

Service _$ServiceFromJson(Map<String, dynamic> json) => Service(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      active: json['active'] as int?,
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => Packages.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'active': instance.active,
      'packages': instance.packages,
    };

Packages _$PackagesFromJson(Map<String, dynamic> json) => Packages(
      id: json['id'] as int?,
      name: json['name'] as String?,
      duration: json['duration'] as int?,
      active: json['active'] as int?,
      serviceId: json['serviceId'] as int?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PackagesToJson(Packages instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'active': instance.active,
      'serviceId': instance.serviceId,
      'price': instance.price,
    };
