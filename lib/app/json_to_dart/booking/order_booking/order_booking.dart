import 'package:json_annotation/json_annotation.dart';

part 'order_booking.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderBooking {
  int? data;
  bool? success;
  String? message;
  int? statusCode;

  OrderBooking({this.data, this.success, this.message, this.statusCode});

  factory OrderBooking.fromJson(Map<String, dynamic> json) => _$OrderBookingFromJson(json);

  Map<String, dynamic> toJson() => _$OrderBookingToJson(this);
}