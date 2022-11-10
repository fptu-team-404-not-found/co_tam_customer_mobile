// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_not_use.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VoucherNotUse _$VoucherNotUseFromJson(Map<String, dynamic> json) =>
    VoucherNotUse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$VoucherNotUseToJson(VoucherNotUse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'success': instance.success,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      isUsed: json['isUsed'] as bool?,
      customerId: json['customerId'] as int?,
      promotionId: json['promotionId'] as int?,
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      promotion: json['promotion'] == null
          ? null
          : Promotion.fromJson(json['promotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
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
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      email: json['email'] as String?,
      linkFacebook: json['linkFacebook'] as String?,
      avatar: json['avatar'] as String?,
      eWallet: (json['eWallet'] as num?)?.toDouble(),
      active: json['active'] as bool?,
      customerPromotions: (json['customerPromotions'] as List<dynamic>?)
          ?.map((e) => CustomerPromotions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'email': instance.email,
      'linkFacebook': instance.linkFacebook,
      'avatar': instance.avatar,
      'eWallet': instance.eWallet,
      'active': instance.active,
      'customerPromotions': instance.customerPromotions,
    };

CustomerPromotions _$CustomerPromotionsFromJson(Map<String, dynamic> json) =>
    CustomerPromotions(
      id: json['id'] as int?,
      isUsed: json['isUsed'] as bool?,
      customerId: json['customerId'] as int?,
      promotionId: json['promotionId'] as int?,
      promotion: json['promotion'] == null
          ? null
          : Promotion.fromJson(json['promotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerPromotionsToJson(CustomerPromotions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isUsed': instance.isUsed,
      'customerId': instance.customerId,
      'promotionId': instance.promotionId,
      'promotion': instance.promotion,
    };

Promotion _$PromotionFromJson(Map<String, dynamic> json) => Promotion(
      id: json['id'] as int?,
      code: json['code'] as String?,
      description: json['description'] as String?,
      value: (json['value'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      amount: json['amount'] as int?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
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
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'active': instance.active,
      'image': instance.image,
    };
