import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class OrderBookingMainService extends StatefulWidget {
  const OrderBookingMainService({Key? key}) : super(key: key);

  @override
  State<OrderBookingMainService> createState() => _OrderBookingMainServiceState();
}

class _OrderBookingMainServiceState extends State<OrderBookingMainService> {
  String? mainService;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,

      child: Transform.translate(
          offset: const Offset(25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Chọn gói dịch vụ chính", style: AppText.textBlack3,),

              Flexible(
                fit: FlexFit.tight,
                child: Transform.translate(
                  offset: const Offset(0,0),
                  child: RadioListTile(
                    activeColor: AppColor.primaryColor100,
                    title: Transform.translate(
                      offset: const Offset(-10, 0),
                      child:  Text("1 giờ", style: AppText.textBlack2,),
                    ),
                    value: "1 giờ",
                    groupValue: mainService,
                    onChanged: (value){
                      setState(() {
                        mainService = value.toString();
                      });
                    },
                  ),
                ) ,
              ),


              Flexible(
                fit: FlexFit.tight,
                child: Transform.translate(
                  offset: const Offset(0, 0),
                  child: RadioListTile(
                    activeColor: AppColor.primaryColor100,
                    title: Transform.translate(
                      offset: const Offset(-10, 0),
                      child:  Text("2 giờ", style: AppText.textBlack2,),
                    ),
                    value: "2 giờ",
                    groupValue: mainService,
                    onChanged: (value){
                      setState(() {
                        mainService = value.toString();
                      });
                    },
                  ),
                ) ,
              ),

              Flexible(
                fit: FlexFit.tight,
                child: Transform.translate(
                  offset: const Offset(0, 0),
                  child: RadioListTile(
                    activeColor: AppColor.primaryColor100,
                    title: Transform.translate(
                      offset: const Offset(-10, 0),
                      child:  Text("3 giờ", style: AppText.textBlack2,),
                    ),
                    value: "3 giờ",
                    groupValue: mainService,
                    onChanged: (value){
                      setState(() {
                        mainService = value.toString();
                      });
                    },
                  ),
                ) ,
              ),
            ],
          ),
      ),
    );
  }
}
