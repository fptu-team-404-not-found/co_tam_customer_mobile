import 'package:co_tam_customer_mobile/app/json_to_dart/order/history_order/history_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../rest_api/rest_api.dart';
import '../../utils/constanst.dart';
import '../../utils/routes.dart';
import '../../widgets/orders/orders_tag.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
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
        child: FutureBuilder<HisOrderOfCus>(
          future: ShowHistoryOrder(),
          builder: (context, snapshot){
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColor.primaryColor30,
                ),
              );
            }
            if(snapshot.hasData){
              if (snapshot.data!.data!.isEmpty) {
                return const Center(
                  child: Text('there are no package at all!!!', style: TextStyle(
                      color: Colors.white, fontSize: 16
                  ),),
                );
              }
              else {
                return ListView.builder(
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    Data history = snapshot.data!.data![index];
                    print("lenght: " + snapshot.data!.data!.length.toString());
                    return
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.orderDetailHistoryScreen);
                        },
                        child: OrderTag(
                          id: history.package!.serviceId!,
                          mainInfo:
                          history.package!.serviceId! == 1 ? 'Dọn dẹp' :
                          history.package!.serviceId! == 2 ? 'Khử trùng ' :
                          history.package!.serviceId! == 3 ? 'Sofa - Rèm cửa' :
                          'Thiết bị' ,
                          startTime: history.dateTime.toString().substring(0,10) + " - "+ history.dateTime.toString().substring(11,16),
                          endTime: '12-12-2012 - 13:00',
                          extraInfo: history.total.toString(),
                        ),
                      );
                  },
                );
              }
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

