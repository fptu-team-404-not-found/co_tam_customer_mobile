import 'package:co_tam_customer_mobile/app/json_to_dart/service/extra_service/extra_service.dart';
import 'package:co_tam_customer_mobile/app/pages/booking/test.dart';
import 'package:co_tam_customer_mobile/app/rest_api/rest_api.dart';
import 'package:co_tam_customer_mobile/app/widgets/booking/extra_service.dart';
import 'package:co_tam_customer_mobile/app/widgets/icon/service_icon.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../pages/booking/booking_main_screen.dart';
import '../../utils/constanst.dart';
import '../../utils/routes.dart';

class ExtraServiceList extends StatefulWidget {
  const ExtraServiceList({Key? key, required this.id}) : super(key: key);
  final id;

  @override
  State<ExtraServiceList> createState() => _ExtraServiceListState();
}

class _ExtraServiceListState extends State<ExtraServiceList> {
  static bool checkExtraService = false;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ListEstraService>(
      future: ShowListExtrServce(widget.id , 1, 10),
      builder: (context, snapshot){
        if(snapshot.hasData){
          if (snapshot.data!.data!.isEmpty) {
            return const Center(
              child: Text('không có địa chỉ để hiển thị', style: TextStyle(
                  color: Colors.black, fontSize: 16
              ),),
            );
          }
          else {
            return Expanded(
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.data!.length,
                itemBuilder: (context, index){
                  Data extraService = snapshot.data!.data![index];
                  return Padding(padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ExtraService(
                          icon: ServiceIcon(size:70,
                              icon: Image(
                                  image:
                                  widget.id == 1 ? const AssetImage('assets/img/service_icons/vacuum.png') :
                                  widget.id == 2 ? const AssetImage('assets/img/service_icons/shield.png') :
                                  widget.id == 3 ? const AssetImage('assets/img/service_icons/sofa.png') :
                                  const AssetImage('assets/img/service_icons/washing.png')
                              ),
                              actionFunction: () async {
                                SharedPreferences prefs = await SharedPreferences.getInstance();
                                await prefs.setInt("extraserviceID", extraService.id!);
                                await prefs.setString("extraserviceName" , extraService.name!);
                                await prefs.setDouble("extraservicePrice" , extraService.price!);
                              }),
                          name: extraService.name!,
                          price: extraService.price.toString()),
                      const SizedBox(width: 20,),
                    ],
                  ),);
                }));
          }
        }
        return const Center(
          child: SizedBox(height: 70,),
        );
      },
    );
  }
}
