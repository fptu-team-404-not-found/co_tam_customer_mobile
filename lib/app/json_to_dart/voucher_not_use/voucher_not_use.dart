import 'package:json_annotation/json_annotation.dart';
part 'voucher_not_use.g.dart';

@JsonSerializable()
class VoucherNotUse {
  List<Data>? data;
  bool? success;
  String? message;
  int? statusCode;

  VoucherNotUse({this.data, this.success, this.message, this.statusCode});
  factory VoucherNotUse.fromJson(Map<String, dynamic> json) => _$VoucherNotUseFromJson(json);

  Map<String, dynamic> toJson() => _$VoucherNotUseToJson(this);

}
@JsonSerializable()
class Data {
  int? id;
  bool? isUsed;
  int? customerId;
  int? promotionId;
  Customer? customer;
  Promotion? promotion;

  Data(
      {this.id,
        this.isUsed,
        this.customerId,
        this.promotionId,
        this.customer,
        this.promotion});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}
@JsonSerializable()
class Customer {
  int? id;
  String? name;
  String? phone;
  DateTime? dateOfBirth;
  String? email;
  String? linkFacebook;
  String? avatar;
  double? eWallet;
  bool? active;
  List<CustomerPromotions>? customerPromotions;

  Customer(
      {this.id,
        this.name,
        this.phone,
        this.dateOfBirth,
        this.email,
        this.linkFacebook,
        this.avatar,
        this.eWallet,
        this.active,
        this.customerPromotions});

  factory Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}

@JsonSerializable()
class CustomerPromotions {
  int? id;
  bool? isUsed;
  int? customerId;
  int? promotionId;
  Promotion? promotion;

  CustomerPromotions(
      {this.id,
        this.isUsed,
        this.customerId,
        this.promotionId,
        this.promotion});

  factory CustomerPromotions.fromJson(Map<String, dynamic> json) => _$CustomerPromotionsFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerPromotionsToJson(this);


}
@JsonSerializable()
class Promotion {
  int? id;
  String? code;
  String? description;
  double? value;
  double? discount;
  int? amount;
  DateTime? startDate;
  DateTime? endDate;
  bool? active;
  String? image;

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
        this.image,});


  factory Promotion.fromJson(Map<String, dynamic> json) => _$PromotionFromJson(json);

  Map<String, dynamic> toJson() => _$PromotionToJson(this);
}
