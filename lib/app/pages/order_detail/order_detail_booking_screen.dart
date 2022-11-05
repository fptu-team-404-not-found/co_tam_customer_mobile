import 'package:co_tam_customer_mobile/app/widgets/appbar/top_app_bar.dart';
import 'package:co_tam_customer_mobile/app/widgets/information/order_information/order_details_payment.dart';
import 'package:co_tam_customer_mobile/app/widgets/information/order_information/order_loading_process_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/button/action_button.dart';
import '../../widgets/information/icon_text_information.dart';
import '../../widgets/information/order_information/order_details_information_card.dart';
import '../../widgets/information/order_information/order_details_summary.dart';
import '../../widgets/information/order_information/order_finding_worker_state.dart';
import '../../widgets/information/person_information_card.dart';
import '../../widgets/state/order_status.dart';
import '../order/order_controller.dart';

class OrderDetailBookingScreen extends View {
  const OrderDetailBookingScreen({Key? key}) : super(key: key);
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
            //OrderLoadingProcessState(),
            OrderFindingCustomerState(),
            SizedBox(height: 12),
            OrderDetailsSummary(),
            SizedBox(height: 12),
            OrderDetailsPayment()

          ]
      ),
    ),
    floatingActionButton: const ActionButton(state: 'Chưa thanh toán',),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
}