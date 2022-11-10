import 'package:co_tam_customer_mobile/app/json_to_dart/booking/list_house/list_house.dart';
import 'package:co_tam_customer_mobile/app/rest_api/rest_api.dart';
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/routes.dart';

class OrderBookingAddress extends StatefulWidget {
  const OrderBookingAddress({Key? key}) : super(key: key);

  @override
  State<OrderBookingAddress> createState() => _OrderBookingAddressState();
}

class _OrderBookingAddressState extends State<OrderBookingAddress> {
  final ScrollController _scrollController = ScrollController();
  static bool isExpaded = false;
  static String title = "" ;
  static int houseID = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: AppColor.primaryColor30, width: 2),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: ExpansionTile(
              initiallyExpanded: isExpaded,
              childrenPadding: EdgeInsets.all(10),
              backgroundColor: Colors.white,
              collapsedTextColor: Colors.black,
              collapsedIconColor: Colors.black,
              iconColor: Colors.black,
              textColor: Colors.black,
              title:  Text(houseID == 0 ? 'Chọn địa chỉ' : "Địa chỉ: $title", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              children: [
                const Divider(
                  color: AppColor.primaryColor30,
                  height: 2,
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                ),
                const SizedBox(height: 10,),
                houseID == 0 ? SizedBox() : TextButton(
                    onPressed: (){
                      houseID = 0;
                      setState((){});
                      ResetDefaultAdress();
                    },
                    child: Text("Nhấn vào đây để xoá mặc định", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
                FutureBuilder<HouseOfCus>(
                  future: ShowListHouse(1,5),
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
                              Data house = snapshot.data!.data![index];
                              String houseText = ("${house.number!} ${house.building!.name!} ${house.building!.area!.name!} ${house.building!.area!.district!} ${house.building!.area!.city!}").toString();
                              return InkWell(
                                      onTap: () async {
                                        setState(() {
                                          title = houseText;
                                          houseID = house.id!;
                                        });
                                        SharedPreferences pref = await SharedPreferences.getInstance();
                                        await pref.setInt("houseID", houseID);
                                        await pref.setString("houseName" , title);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height:40,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(5)),
                                          color: Colors.white,
                                        ),
                                        child: Text(houseText,
                                            style: const TextStyle(fontSize: 16), textAlign: TextAlign.center),
                                      )
                                ,
                              );
                            },
                          ),
                        );
                      }
                    }
                    return const Center(
                      child: Text('Error'),
                    );
                  },
                )
              ],
              onExpansionChanged: (isExpaded){
                setState((){
                  isExpaded = !isExpaded;
                });
              } ,
            ),
          ),
        )
    );
  }
}
