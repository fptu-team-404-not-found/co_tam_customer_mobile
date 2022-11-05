import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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