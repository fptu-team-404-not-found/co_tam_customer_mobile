import 'dart:io';
import 'dart:convert';
import 'package:co_tam_customer_mobile/app/json_to_dart/order/customer_order/list_cus_order.dart';
import 'package:co_tam_customer_mobile/app/json_to_dart/order/history_order/history_order.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../json_to_dart/order/rating_order/list_rating.dart';
import '../json_to_dart/user/user_info.dart';
import '../json_to_dart/voucher/list_of_voucher.dart';




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

//Account
//get information of user
Future<UserInfo> fetchInfo() async {
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/customers/1'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  return UserInfo.fromJson(responseJson);
}

//update info
Future updateUserInfo(name, phone, birthday, email, linkFB, avatar, eWallet,context) async {
  var response = await http.put(
      Uri.parse("https://cotam.azurewebsites.net/api/customers/1"),
      headers : {'Content-Type': 'application/json', 'charset': 'utf-8'},
      body:
      jsonEncode({
        "name": name,
        "phone": phone,
        "dateOfBirth": birthday,
        "email": email,
        "linkFacebook": linkFB,
        "avatar": avatar,
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
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/orders/order-history/1'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  return ListOrderOfCus.fromJson(responseJson);
}
//Show List history of customer
Future<HisOrderOfCus> ShowHistoryOrder() async {
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/orders/order-pending/1'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  return HisOrderOfCus.fromJson(responseJson);
}
//Show List Rating of customer
Future<ListOfRating> ShowRating() async {
  final response = await http.get(
    Uri.parse('https://cotam.azurewebsites.net/api/work-in-order/customers/without-rating/1'),
    headers: {
      HttpHeaders.contentTypeHeader: "application/json; charset=utf-8",
    },
  );
  final responseJson = jsonDecode(response.body);
  print(responseJson.toString());
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