import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/appbar/top_app_bar.dart';
import '../../widgets/button/action_button.dart';
import '../../widgets/information/icon_text_information.dart';
import '../../widgets/information/order_information/order_details_payment.dart';
import '../../widgets/information/order_information/order_details_summary.dart';
import '../../widgets/information/order_information/order_loading_process_state.dart';
import '../../widgets/information/person_information_card.dart';
import '../../widgets/state/order_status.dart';
import '../order/order_controller.dart';

class OrderDetailHistoryScreen extends View {
  const OrderDetailHistoryScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => OrderDetailHistoryScreenView();
  }
class OrderDetailHistoryScreenView
    extends ViewState<OrderDetailHistoryScreen, OrderController> {
  OrderDetailHistoryScreenView() : super(OrderController());

  @override
  Widget get view => Scaffold(
    appBar:  const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: TopAppBar('Lịch sử đơn đặt', FontAwesomeIcons.circleArrowLeft, null, null)),

    body: SingleChildScrollView(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(height: 12),
            IconTextInformation(FontAwesomeIcons.locationDot, informationDetails: 'Phòng 2.03, S.201, Vinhomes Grand Park'),
            OrderLoadingProcessState(),
            SizedBox(height: 12),
            OrderDetailsSummary(),
            SizedBox(height: 12),
            OrderDetailsPayment()
          ]
      ),
    ),
    floatingActionButton: const ActionButton(state: 'Đã thanh toán',),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
}