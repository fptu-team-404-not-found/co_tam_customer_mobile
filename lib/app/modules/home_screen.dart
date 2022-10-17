import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor100,
        elevation: 0.0, //no shadow
        toolbarHeight: 157,
        shadowColor: null,
        title: const Text(
          'Welcome sentence nè',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_balance_wallet),
            onPressed: () {},
            iconSize: 24,
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
            iconSize: 24,
          )
        ],

      ),
      body:  Image.asset(
        'assets/img/home_decor.png',
      ),
    );
  }
}
