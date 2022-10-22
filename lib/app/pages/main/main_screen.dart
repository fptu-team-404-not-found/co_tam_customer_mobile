import 'package:co_tam_customer_mobile/app/pages/account/account_main.dart';
import 'package:co_tam_customer_mobile/app/pages/home/home_screen.dart';
import 'package:co_tam_customer_mobile/app/pages/order/order_main.dart';
import 'package:co_tam_customer_mobile/app/pages/vouchers/voucher_main.dart';
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

//This class is use to điều khiền cái màn hình bằng cái bottom nav bar
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    OrderMain(),
    VoucherMain(),
    AccountMain(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child:  GNav(
          gap: 7,
          tabBackgroundColor: AppColor.primaryColor30,
          activeColor: AppColor.primaryColor,
          padding: const EdgeInsets.all(15),
          selectedIndex: _selectedIndex,
          tabs:  const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.list_alt,
              text: 'Orders',
            ),
            GButton(
              icon: Icons.discount,
              text: 'Vouchers',),
            GButton(
              icon: Icons.person,
              text: 'Account',),
          ],
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}
