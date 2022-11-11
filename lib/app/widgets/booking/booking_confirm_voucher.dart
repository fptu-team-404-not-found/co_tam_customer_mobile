import 'package:co_tam_customer_mobile/app/rest_api/rest_api.dart';
import 'package:co_tam_customer_mobile/app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../json_to_dart/voucher_not_use/voucher_not_use.dart';
import '../../utils/constanst.dart';

class BookingConfirmVoucher extends StatefulWidget {
  const BookingConfirmVoucher({Key? key}) : super(key: key);

  @override
  State<BookingConfirmVoucher> createState() => _BookingConfirmVoucherState();
}

class _BookingConfirmVoucherState extends State<BookingConfirmVoucher> {
  final ScrollController _scrollController = ScrollController();
  static bool isExpaded = false;
  static String title = "Không có voucher" ;
  static int voucherID = 0;
  static double discount = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
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
                title:  Text(voucherID == 0 ? 'Chọn voucher' : title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                children: [
                  const Divider(
                    color: AppColor.primaryColor30,
                    height: 2,
                    thickness: 0.5,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(height: 10,),
                  FutureBuilder<VoucherNotUse>(
                    future: ShowCusVoucherNotUse(1,10),
                    builder: (context, snapshot){
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: AppColor.primaryColor30,
                          ),
                        );
                      }
                      return ListView.builder(
                        controller: _scrollController,
                        shrinkWrap: true,
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          Data voucher = snapshot.data!.data![index];
                          String voucherText = voucher.promotion!.code!.toString();
                          return InkWell(
                              onTap: () async {
                                setState(() {
                                  title = voucherText;
                                  voucherID = voucher.id!;
                                  discount = voucher.promotion!.value!;
                                });
                                SharedPreferences pref = await SharedPreferences.getInstance();
                                await pref.setInt("voucherID", voucherID);
                                await pref.setDouble("vouchervalue", discount);
                                await pref.setString("voucherName" , title);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height:40,
                                width: MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Colors.white,
                                ),
                                child: Text(voucherText,
                                    style: const TextStyle(fontSize: 16), textAlign: TextAlign.center),
                              )
                          );
                        },
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
      )
    );
  }
}
