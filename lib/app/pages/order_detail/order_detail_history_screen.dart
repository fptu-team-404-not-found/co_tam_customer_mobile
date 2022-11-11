import 'package:co_tam_customer_mobile/app/rest_api/rest_api.dart';
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../json_to_dart/work_in_order/work_in_order.dart';
import '../../widgets/appbar/top_app_bar.dart';
import '../../widgets/button/action_button.dart';
import '../../widgets/information/icon_text_information.dart';
import '../../widgets/information/order_information/order_details_payment.dart';
import '../../widgets/information/order_information/order_details_summary.dart';
import '../../widgets/information/order_information/order_finding_worker_state.dart';
import '../../widgets/information/order_information/order_loading_process_state.dart';

//k dung toi
class OrderDetailHistoryScreen extends StatelessWidget {
  OrderDetailHistoryScreen(
      {Key? key,
       this.orderId,
      required this.serviceID,
      required this.packageValue,
      required this.voucherValue, this.total,
      required this.extraValue,
       this.paymentMethodID,
      required this.orderState})
      : super(key: key);
  final int? orderId, paymentMethodID ;
  final int serviceID,  orderState;
  final double packageValue, voucherValue, extraValue;
  final double? total;



  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: TopAppBar('Chi tiết đơn đặt', FontAwesomeIcons.circleArrowLeft,
              null, null)),
      body: SingleChildScrollView(
        child: FutureBuilder<WorkInOrder?>(
          future: GetWorkInOrder(orderId!),
          builder: (BuildContext context, snapshot) {
            String? houseNumber =
                snapshot.data?.data?.order?.house?.number?.trim();
            String? houseBuilding =
                snapshot.data?.data?.order?.house?.building?.name?.trim();
            String? houseArea =
                snapshot.data?.data?.order?.house?.building?.area?.name?.trim();
            String? houseDistrict = snapshot
                .data?.data?.order?.house?.building?.area?.district
                ?.trim();
            ;
            String? houseCity =
                snapshot.data?.data?.order?.house?.building?.area?.city?.trim();
            String houseText =
                "$houseNumber $houseBuilding $houseArea $houseDistrict $houseCity";
            return RefreshIndicator(
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
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  const SizedBox(height: 12),
                  IconTextInformation(FontAwesomeIcons.locationDot,
                      informationDetails: houseText),
                  orderState == 1 ? OrderFindingCustomerState(title: sName[serviceID].name ) : OrderLoadingProcessState(
                        serviceID: serviceID,
                        orderState: snapshot.data?.data?.order?.orderState,
                        startTime: snapshot.data?.data?.order?.dateTime
                            .toString()
                            .substring(11, 16),
                        endTime: snapshot.data?.data?.order?.endTime == null
                            ? ' ...'
                            : snapshot.data?.data?.order?.endTime
                            .toString()
                            .substring(11, 16),
                        staffName: snapshot.data?.data?.houseWorker?.name,
                        rating: snapshot.data?.data?.rating,
                        avatar: snapshot.data?.data?.houseWorker?.avatar),
                  const SizedBox(height: 12),
                  OrderDetailsSummary(
                      packageValue: packageValue,
                      extraValue: extraValue!,
                      voucherValue: voucherValue!,
                      total: total),
                  OrderDetailsPayment(
                    paymentID: paymentMethodID,
                  )
                ]),
              ),
            );
          },
        ),
      ),
      floatingActionButton: ActionButton(
        state: (paymentMethodID == 1 && orderState != 6)
            ? 'Chưa thanh toán'
            : 'Đã thanh toán',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

List<serviceName> sName = [
  serviceName(name: ''), //khac index >< id
  serviceName(name: 'Dọn dẹp vệ sinh'),
  serviceName(name: 'Khử trùng nhà cửa'),
  serviceName(name: 'Sofa - Rèm cửa'),
  serviceName(name: 'Thiết bị lạnh'),
];

class serviceName {
  String name;
  serviceName({required this.name});
}
