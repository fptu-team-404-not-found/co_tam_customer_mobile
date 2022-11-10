// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderBooking _$OrderBookingFromJson(Map<String, dynamic> json) => OrderBooking(
      data: json['data'] as int?,
      success: json['success'] as bool?,
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$OrderBookingToJson(OrderBooking instance) =>
    <String, dynamic>{
      'data': instance.data,
      'success': instance.success,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };
