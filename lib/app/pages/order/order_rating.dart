import 'package:co_tam_customer_mobile/app/json_to_dart/order/rating_order/list_rating.dart';
import 'package:co_tam_customer_mobile/app/rest_api/rest_api.dart';
import 'package:co_tam_customer_mobile/app/widgets/orders/orders_rating_tag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/constanst.dart';
import '../../widgets/button/rating_button.dart';

class OrderRatingPage extends StatefulWidget {
  const OrderRatingPage({Key? key}) : super(key: key);

  @override
  State<OrderRatingPage> createState() => _OrderRatingPageState();
}

class _OrderRatingPageState extends State<OrderRatingPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: FutureBuilder<ListOfRating>(
        future: ShowRating(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting) {
            print("1");
            print("hahaha" + snapshot.toString());
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
                  Data rating = snapshot.data!.data![index];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OrderRatingTag(
                        id: rating.id!,
                        mainInfo:
                        rating.order!.package!.serviceId == 1 ? 'Dọn dẹp' :
                        rating.order!.package!.serviceId == 2 ? 'Khử trùng ' :
                        rating.order!.package!.serviceId == 3 ? 'Sofa - Rèm cửa' :
                        'Thiết bị' ,
                        startTime: rating.order!.dateTime!.toString().substring(0,16),
                        endTime: "15-10-2022" /*rating.order!.endTime!.toString().substring(0,16)*/,
                        price: rating.order!.total!.toString(),),
                       Align(
                        alignment: Alignment.topRight,
                        child: RatingButton(id: rating.id!,),
                      ),
                    ],
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
    );
  }
}
