import 'package:co_tam_customer_mobile/app/json_to_dart/service/package/list_package.dart';
import 'package:co_tam_customer_mobile/app/rest_api/rest_api.dart';
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderBookingMainService extends StatefulWidget {
  const OrderBookingMainService({Key? key, required this.serviceID}) : super(key: key);
  final int serviceID;

  @override
  State<OrderBookingMainService> createState() => _OrderBookingMainServiceState();
}

class _OrderBookingMainServiceState extends State<OrderBookingMainService> {
  String? mainService;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.translate(
          offset: const Offset(25, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Chọn gói dịch vụ chính", style: AppText.textBlack3,),
              FutureBuilder<ListOfPackage>(
                future: ShowListPackage(widget.serviceID , 1, 10),
                builder: (context, snapshot){
                  /*if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: AppColor.primaryColor30,
                      ),
                    );
                  }*/
                  if(snapshot.hasData){
                    if (snapshot.data!.data!.isEmpty) {
                      return const Center(
                        child: Text('không có địa chỉ để hiển thị', style: TextStyle(
                            color: Colors.black, fontSize: 16
                        ),),
                      );
                    }
                    else {
                      return Container(
                        child: ListView.builder(
                          controller: _scrollController,
                          shrinkWrap: true,
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: (BuildContext context, int index) {
                            Data package = snapshot.data!.data![index];
                            return Flexible(
                              fit: FlexFit.tight,
                              child: Transform.translate(
                                offset: const Offset(0,0),
                                child: RadioListTile(
                                  activeColor: AppColor.primaryColor100,
                                  title: Transform.translate(
                                    offset: const Offset(-10, 0),
                                    child:  Text( package.name!, style: AppText.textBlack2,),
                                  ),
                                  value: package.name!,
                                  groupValue: mainService,
                                  onChanged: (value) async{
                                    setState(() {
                                      mainService = value.toString();
                                    });
                                    SharedPreferences pref = await SharedPreferences.getInstance();
                                    await pref.setInt("packageID", package.id!);
                                    await pref.setString("packageName" , package.name!);
                                    await pref.setDouble("packagePrice" , package.price!);
                                  },
                                ),
                              ) ,
                            );
                          },
                        ),
                      );
                    }
                  }
                  return const Center(
                    child: SizedBox(height: 175,),
                  );
                },
              )
            ],
          ),
      ),
    );
  }
}
