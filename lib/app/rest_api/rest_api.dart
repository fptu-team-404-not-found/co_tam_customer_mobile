import 'dart:io';
import 'dart:convert';
import 'package:co_tam_customer_mobile/app/json_to_dart/customer_voucher/list_cus_voucher.dart';
import 'package:co_tam_customer_mobile/app/json_to_dart/order/customer_order/list_cus_order.dart';
import 'package:co_tam_customer_mobile/app/json_to_dart/order/history_order/history_order.dart';
import 'package:co_tam_customer_mobile/app/json_to_dart/service/package/list_package.dart';
import 'package:co_tam_customer_mobile/app/json_to_dart/service/extra_service/extra_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decode/jwt_decode.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../json_to_dart/booking/list_house/list_house.dart';
import '../json_to_dart/booking/order_booking/order_booking.dart';
import '../json_to_dart/jwt/jwt.dart';
import '../json_to_dart/order/rating_order/list_rating.dart';
import '../json_to_dart/token/token.dart';
import '../json_to_dart/user/user_info.dart';
import '../json_to_dart/voucher/list_of_voucher.dart';
import '../json_to_dart/voucher_not_use/voucher_not_use.dart';
import '../json_to_dart/work_in_order/work_in_order.dart';



/// Auth
Future<Token> authLogin(email, name) async {
  final response = await http.get(
      Uri.parse('https://cotam.azurewebsites.net/api/auth-customer/customers/login-ver?email=$email&name=$name'),
      headers: {
        HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
      }
  );

  final responseJson = jsonDecode(response.body);
  return Token.fromJson(responseJson);
}

Future<JWT> jwtDecode() async {
  final prefs = await SharedPreferences.getInstance();

  final accessToken = prefs.getString('accessToken');
  Map<String, dynamic> payload = Jwt.parseJwt(accessToken.toString());
  JWT jwt = JWT.fromJson(payload);

  return jwt;
}

//Voucher
//show all
Future <ListOfVoucher> ShowAllVoucher(int pageIndex,int PageSize) async {
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/promotions?PageIndex=$pageIndex&PageSize=$PageSize'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
    final responseJson = jsonDecode(response.body);
  return ListOfVoucher.fromJson(responseJson);
}
//Show list voucher of customer
Future <ListCusVoucher> ShowCusVoucher(int pageIndex,int PageSize) async {
  JWT jwt = await jwtDecode();
  int id = int.parse(jwt.id);
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/customer-promotions/customers/$id?PageIndex=$pageIndex&PageSize=$PageSize'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  return ListCusVoucher.fromJson(responseJson);
}
//Show list voucher of customer not use
Future <VoucherNotUse> ShowCusVoucherNotUse(int pageIndex,int PageSize) async {
  JWT jwt = await jwtDecode();
  int id = int.parse(jwt.id);
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/customer-promotions/customers/not-used/$id'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; accept: text/plain",
    },
  );
  final responseJson = jsonDecode(response.body);
  return VoucherNotUse.fromJson(responseJson);
}


//Customer
//get information of user
Future<UserInfo> fetchInfo() async {
  JWT jwt = await jwtDecode();
  int id = int.parse(jwt.id);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/customers/$id'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  await prefs.setDouble("eWalet" , UserInfo.fromJson(responseJson).data!.eWallet!);
  await prefs.setString("CustomerName" , UserInfo.fromJson(responseJson).data!.name!);
  return UserInfo.fromJson(responseJson);
}

//update info
Future updateUserInfo(name, phone, birthday, email, linkFB, avatar, eWallet,context) async {
  JWT jwt = await jwtDecode();
  int id = int.parse(jwt.id);
  var response = await http.put(
      Uri.parse("https://cotam.azurewebsites.net/api/customers/$id"),
      headers : {'Content-Type': 'application/json', 'charset': 'utf-8'},
      body:
      jsonEncode({
        "name": name,
        "phone": phone,
        "dateOfBirth": birthday,
        "email": email,
        "eWallet": eWallet,
        "active": true
      })
  );
  if (response.statusCode == 200) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Your info has been updated")));
  }else{
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("unsuccessful")));
  }
}


//Order
//Show list order of customer
Future<ListOrderOfCus> ShowListOrder() async {
  JWT jwt = await jwtDecode();
  int id = int.parse(jwt.id);
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/orders/order-pending/$id'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8, accept: text/plain",
    },
  );
  final responseJson = jsonDecode(response.body);
  return ListOrderOfCus.fromJson(responseJson);
}
//Show List history of customer
Future<HisOrderOfCus> ShowHistoryOrder() async {
  JWT jwt = await jwtDecode();
  int id = int.parse(jwt.id);
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/orders/order-history/$id'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);

  return HisOrderOfCus.fromJson(responseJson);
}
//Show List Rating of customer
Future<ListOfRating> ShowRating() async {
  JWT jwt = await jwtDecode();
  int id = int.parse(jwt.id);
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/work-in-order/customers/without-rating/$id'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  return ListOfRating.fromJson(responseJson);
}
//Update Rating
Future UpdateRating(id,numberStart,context) async {
  var response = await http.put(
      Uri.parse("https://cotam.azurewebsites.net/api/work-in-order/$id/$numberStart"),
      headers : {'Content-Type': 'application/json', 'charset': 'utf-8'},
  );
  if (response.statusCode == 200) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("successful")));
  }else{
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("unsuccessful")));
  }
}

//booking
//create order + get orderID
Future<int?> CreateUserOrder(subTotal, total, houseId, packageId, promotionId, paymentMethodId,context) async {
  var response = await http.post(
      Uri.parse('https://cotam.azurewebsites.net/orders'),
      headers : {'Content-Type': 'application/json-patch+json','accept': 'text/plain'},
      body:
      jsonEncode({
        "subTotal": subTotal,
        "total": total,
        "houseId": houseId,
        "packageId": packageId,
        "promotionId": promotionId,
        "paymentMethodId": 1
      })
  );
  final responseJson = jsonDecode(response.body);
  return OrderBooking.fromJson(responseJson).data;
}
//Update Order details
Future <bool?> UpdateOrderDetails (orderID, extraServiceId ,context) async {
  var response = await http.post(
      Uri.parse('https://cotam.azurewebsites.net/order-detail/$orderID'),
      headers : {'Content-Type': 'application/json-patch+json','accept': 'text/plain'},
      body:
      jsonEncode({
        "extraServiceId": extraServiceId
      })
  );
  final responseJson = jsonDecode(response.body);
  return OrderBooking.fromJson(responseJson).success;
}


//House
//get list house o customer
Future<HouseOfCus> ShowListHouse(int PageIndex, int PageSize) async {
  JWT jwt = await jwtDecode();
  int id = int.parse(jwt.id);
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/customers/$id/houses?PageIndex=$PageIndex&PageSize=$PageSize'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  return HouseOfCus.fromJson(responseJson);
}

//ExtraService
//get list extraService

Future<ListEstraService> ShowListExtrServce(int ServiceID, int PageIndex, int PageSize) async {
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/extra-services/services/$ServiceID?PageIndex=$PageIndex&PageSize=$PageSize'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  return ListEstraService.fromJson(responseJson);
}
//Package
//get list Pakage

Future<ListOfPackage> ShowListPackage(int ServiceID, int PageIndex, int PageSize) async {
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/packages/service/$ServiceID?PageIndex=$PageIndex&PageSize=$PageSize'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  return ListOfPackage.fromJson(responseJson);
}


//
Future<double?> TotalPage1() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  double? Total;
  double? packagePrice = prefs.getDouble('packagePrice');
  double? extraservicePrice = prefs.getDouble('extraservicePrice');
  if (packagePrice == null && extraservicePrice == null) {
    Total = 0;
  }else
  {
    Total = packagePrice! + extraservicePrice!;
  }
  return Total;
}


//Clear Data after confirm (int)
Future<int?> CLearDataInt() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt("paymentID" , 0);
  await prefs.setInt("packageID" , 0);
  await prefs.setInt("extraserviceID" , 0);
  await prefs.setInt("voucherID" , 0);
}
//Clear Data after confirm (double)
Future<double?> CLearDataDouble() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setDouble("packagePrice" , 0);
  await prefs.setDouble("extraservicePrice" , 0);
  await prefs.setDouble("vouchervalue" , 0);
}
//Clear Data after confirm (String)
Future<String?> CLearDataString() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString("extraserviceName" , "");
  await prefs.setString("packageName" , "");
  await prefs.setString("voucherName" , "");
}

//reset default address in booking (int)
Future<int?> ResetDefaultAdress() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt("houseID" , 0);
}

//clear data page confirm ( page 2 booking)
Future<int?> ResetID() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setInt("paymentID" , 0);
  await prefs.setInt("voucherID" , 0);
}
Future<double?> ResetVoucherValue() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setDouble("vouchervalue" , 0);
}
//Get valueVoucher
Future<double?> GetVoucherValue() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  double? value = prefs.getDouble("vouchervalue");
  if(value == null){
    value = 0;
  }
  return value;
}
//Get Cust name
Future<String?> GetCustomerName() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? name = prefs.getString("CustomerName");
  return name;
}

Future<double?> GetVoucherPrice() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  double? price = prefs.getDouble("vouchervalue");
  return price;
}
Future<int?> GetVoucherId() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? id = prefs.getInt("voucherID");
  return id;
}

Future<Autogenerated?> GetWorkInOrder(int orderID) async {
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/work-in-order/orders/$orderID'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8, accept: text/plain",
    },
  );
  final responseJson = jsonDecode(response.body);
  return Autogenerated.fromJson(responseJson);
}