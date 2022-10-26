import 'package:co_tam_customer_mobile/app/widgets/appbar/top_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/button/action_button.dart';
import '../../widgets/information/icon_text_information.dart';
import '../../widgets/information/order_information/order_details_information_card.dart';
import '../../widgets/information/order_information/order_details_summary.dart';
import '../../widgets/information/person_information_card.dart';
import '../../widgets/state/order_status.dart';
import '../order/order_controller.dart';

class OrderDetailBookingScreen extends View {
  const OrderDetailBookingScreen({super.key});
  @override
  State<StatefulWidget> createState() => OrderDetailBookingScreenView();
}

class OrderDetailBookingScreenView
    extends ViewState<OrderDetailBookingScreen, OrderController> {
  OrderDetailBookingScreenView() : super(OrderController());

  @override
  Widget get view => Scaffold(
    appBar:  const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TopAppBar('Chi tiết Đơn đặt', FontAwesomeIcons.circleArrowLeft, null, null)),
    body: SingleChildScrollView(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(height: 12),
            IconTextInformation(FontAwesomeIcons.locationDot, informationDetails: 'Phòng 2.03, S.201, Vinhomes Grand Park'),
            SizedBox(height: 12),
            OrderStatus(),
            SizedBox(height: 12),
            PersonInformationCard(),
            SizedBox(height: 12),
            OrderDetailsInformationCard(),
            SizedBox(height: 12),
            OrderDetailsSummary(),
            SizedBox(height: 68),
            OrderDetailsSummary(),
          ]
      ),
    ),
    floatingActionButton: const ActionButton(numberOfButton: 1),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
}