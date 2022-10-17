
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
//import 'package:floating_navbar/floating_navbar.dart';
//import 'package:floating_navbar/floating_navbar_item.dart';
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
          ),
        ],
      ),
     /* bottomNavigationBar:  FloatingNavBar(
        resizeToAvoidBottomInset: false,
        color: Colors.white,
        selectedIconColor: Colors.green,
        unselectedIconColor: Colors.white.withOpacity(0.6),
        items: [
          FloatingNavBarItem(iconData: Icons.home_outlined, page: const HomeScreen(), title: 'Home'),
          FloatingNavBarItem(iconData: Icons.list_alt, page: const HomeScreen(), title: 'Orders'),
          FloatingNavBarItem(iconData: Icons.discount, page: const HomeScreen(), title: 'Vouchers'),
          FloatingNavBarItem(iconData: Icons.account_circle_sharp, page: const HomeScreen(), title: 'Account'),
        ],
        horizontalPadding: 10.0,
        hapticFeedback: true,
        showTitle: true,
      ),*/
    body:

    ListView(
          children:  [
            Container(
              width: 390,
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                decoration: const BoxDecoration(
                  border:Border(
                     bottom: BorderSide(
                        color: AppColor.primaryColor100,
                        width: 1,
                      )
                  )
                ),
                child: const Text('Ưu đãi',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
            ),

            Padding(
                padding: const EdgeInsets.fromLTRB(18,15,15,2),
                child: Image.asset('assets/img/voucher.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18,15,15,2),
              child: Image.asset('assets/img/voucher.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18,15,15,2),
              child: Image.asset('assets/img/voucher.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18,15,15,2),
              child: Image.asset('assets/img/voucher.png'),
            )

          ],
        )
    );
    

  }


}
