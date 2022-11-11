import 'package:co_tam_customer_mobile/app/widgets/appbar/top_app_bar.dart';
import 'package:co_tam_customer_mobile/app/widgets/information/order_information/order_details_payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/constanst.dart';
import '../../widgets/button/action_button.dart';
import '../../widgets/information/icon_text_information.dart';
import '../../widgets/information/order_information/order_details_summary.dart';
import '../../widgets/information/order_information/order_finding_worker_state.dart';
import '../../widgets/information/order_information/order_loading_process_state.dart';
import '../order/order_controller.dart';

class OrderDetailBookingScreen extends StatefulWidget {
  const OrderDetailBookingScreen({Key? key, required this.extraValue, required this.orderState, required this.startTime, required this.endTime, required this.staffName, required this.address, required this.serviceID, required this.packageValue, required this.total, required this.voucherValue, required this.paymentMethodID}) : super(key: key);
  final String? address, startTime, endTime, staffName;
  final int? orderState, paymentMethodID, serviceID;
  final double? packageValue, voucherValue, total, extraValue;

  @override
  State<OrderDetailBookingScreen> createState() => _OrderDetailBookingScreenState();
}

class _OrderDetailBookingScreenState extends State<OrderDetailBookingScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  GlobalKey<RefreshIndicatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: TopAppBar('Chi tiết Đơn đặt', FontAwesomeIcons.circleArrowLeft, null, null)),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        color: Colors.white,
        backgroundColor: AppColor.primaryColor100,
        strokeWidth: 2.0,
        onRefresh: () async {
          // Replace this delay with the code to be executed during refresh
          // and return a Future when code finishs execution.
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        // Pull from top to show refresh indicator.
        child: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 12),
                IconTextInformation(FontAwesomeIcons.locationDot, informationDetails: widget.address.toString()),
                widget.orderState == 1 ? const SizedBox() :
                OrderLoadingProcessState(serviceID: widget.serviceID!,
                    orderState: widget.orderState!,
                    startTime: widget.startTime,
                    endTime: '',
                    staffName: widget.staffName,
                    rating: 0),
                widget.orderState != 1 ? const SizedBox() : OrderFindingCustomerState(title: sName[widget.serviceID!].name,),
                const SizedBox(height: 12),
                OrderDetailsSummary(
                    packageValue: widget.packageValue!,
                    extraValue: widget.extraValue!,
                    voucherValue: widget.voucherValue!,
                    total: widget.total),
                OrderDetailsPayment(paymentID: widget.paymentMethodID!,)

              ]
          ),
        ),
      ),
      floatingActionButton: ActionButton(state: (widget.paymentMethodID! == 1 && widget.orderState != 6) ? 'Chưa thanh toán' : 'Đã thanh toán',),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
  List <serviceName> sName = [
    serviceName(name: ''),  //khac index >< id
    serviceName(name: 'Dọn dẹp vệ sinh'),
    serviceName(name: 'Khử trùng nhà cửa'),
    serviceName(name: 'Sofa - Rèm cửa'),
    serviceName(name: 'Thiết bị lạnh'),
  ];
}
class serviceName{
  String name;
  serviceName({required this.name});
}