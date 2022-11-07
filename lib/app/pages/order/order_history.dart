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
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<HisOrderOfCus>(
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
                return
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.orderDetailHistoryScreen);
                    },
                    child: OrderTag(
                      id: history.id!,
                      mainInfo:
                      history.id == 1 ? 'Dọn dẹp' :
                      history.id == 2 ? 'Khử trùng ' :
                      history.id == 3 ? 'Sofa - Rèm cửa' :
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
    );
  }
}
