import 'package:co_tam_customer_mobile/app/json_to_dart/order/customer_order/list_cus_order.dart';
import 'package:co_tam_customer_mobile/app/rest_api/rest_api.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:co_tam_customer_mobile/app/widgets/tag/order_booking_tag.dart';
import 'package:flutter/material.dart';
import '../../utils/constanst.dart';
import '../order_detail/order_detail_history_screen.dart';

class OrderBookingScreen extends StatefulWidget {
  const OrderBookingScreen({Key? key}) : super(key: key);

  @override
  State<OrderBookingScreen> createState() => _OrderBookingScreenState();
}

class _OrderBookingScreenState extends State<OrderBookingScreen> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: FutureBuilder<ListOrderOfCus>(
          future: ShowListOrder(),
          builder: (context, snapshot){
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColor.primaryColor30,
                ),
              );
            }
            if (snapshot.data!.data!.isEmpty) {
              return const Center(
                child: Text('there are no package at all!!!', style: TextStyle(
                    color: Colors.white, fontSize: 16
                ),),
              );
            }
            if(snapshot.hasData){
                return Padding(padding: const EdgeInsets.all(10),
                  child: ListView.builder(
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      Data order = snapshot.data!.data![index];
                      return GestureDetector(
                        onTap: () async {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => OrderDetailHistoryScreen(
                                dateTime: order.dateTime.toString(),
                                extraValue: order.subTotal! - order.package!.price!,
                                orderState: order.orderState!,
                                serviceID: order.package!.serviceId!,
                                packageValue: order.package!.price!,
                                total: order.total,
                                voucherValue: order.promotion!.id == null ? 0 : order.promotion!.value!,
                                paymentMethodID: order.paymentMethodId,
                                orderId: order.id,
                              )));
                        },
                        child: OrderBookingTag(
                            iconData: ServiceIcon(size:50, icon: Image(image:
                            (order.package?.serviceId == 1) ? const AssetImage('assets/img/service_icons/vacuum.png') :
                            (order.package?.serviceId == 2) ? const AssetImage('assets/img/service_icons/shield.png') :
                            (order.package?.serviceId == 3) ? const AssetImage('assets/img/service_icons/sofa.png') :
                            const AssetImage('assets/img/service_icons/washing.png'))),
                            mainInfo:
                            order.package?.serviceId == 1 ? 'Dọn dẹp' :
                            order.package?.serviceId == 2 ? 'Khử trùng ' :
                            order.package?.serviceId == 3 ? 'Sofa - Rèm cửa' :
                            'Thiết bị lạnh' ,
                            subInfo: 'Đặt lúc ${order.dateTime.toString().substring(11,16)}',
                            extraInfo:
                            order.orderState == 1 ?'Tìm kiếm' :
                            order.orderState == 2 ?'Đã nhận đơn' :
                            order.orderState == 3 ?'Đang đến' :
                            order.orderState == 4 ?'Đang làm việc' :
                            order.orderState == 5 ?'Đã hoàn thành ' :
                            'Xác nhận hoàn thành'
                        ),
                      );
                    },
                  ),);
            }
            return const Center(
              child: Text('Lỗi'),
            );
          },
        ),
      ),
    );
  }
}
