import 'package:co_tam_customer_mobile/app/pages/booking/booking_main_screen.dart';
import 'package:co_tam_customer_mobile/app/pages/booking/test.dart';
import 'package:co_tam_customer_mobile/app/pages/notification/notification_screen.dart';
import 'package:flutter/material.dart';

import '../pages/login/login_screen.dart';
import '../pages/main/main_screen.dart';

import '../pages/vouchers/voucher_detail_screen.dart';
import '../pages/vouchers/voucher_main_screen.dart';
import '../pages/wallet/wallet_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'LoginScreen':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case 'MainScreen0':
        return MaterialPageRoute(builder: (_) => const MainScreen(selectedInit: 0,));
      case 'MainScreen2':
        return MaterialPageRoute(builder: (_) => const MainScreen(selectedInit: 2,));
      case 'NotificationScreen':
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case 'MainBookingScreen':
        final title = settings.arguments as TestTitle;
        return MaterialPageRoute(builder: (_) => BookingMainScreen(title: title));
      case 'VoucherMainScreen':
        return MaterialPageRoute(builder: (_) => const VoucherMainScreen());
      case 'VoucherDetailScreen':
        return MaterialPageRoute(builder: (_) => const VoucherDetailScreen());
      case 'WalletScreen':
        return MaterialPageRoute(builder: (_) => const WalletScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}