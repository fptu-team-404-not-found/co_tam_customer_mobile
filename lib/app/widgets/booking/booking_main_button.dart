import 'package:co_tam_customer_mobile/app/pages/booking/booking_confirm_screen.dart';
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../rest_api/rest_api.dart';

class BookingMainButton extends StatefulWidget {
  const
  BookingMainButton({Key? key, required this.id, required this.title}) : super(key: key);
  final id;
  final title;

  @override
  State<BookingMainButton> createState() => _BookingMainButtonState();
}


class _BookingMainButtonState extends State<BookingMainButton> {
  late double? total = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15.0),
        width: 362,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ]
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5))
              ),
              child: SizedBox(
                height: 40,
                width: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child:  Icon(
                        Icons.shopping_cart,
                        color: AppColor.primaryColor100,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        widget.title!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor100,
                            fontSize: 20)
                      ),
                    ),
                  ],
                ),
              ),
            ),

            InkWell(
                onTap: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  int? houseID = prefs.getInt('houseID');
                  String? houseName = prefs.getString('houseName');
                  int? packageID = prefs.getInt('packageID');
                  String? packageName = prefs.getString('packageName');
                  int? extraserviceID = prefs.getInt('extraserviceID');
                  String? extraserviceName = prefs.getString('extraserviceName');
                  total = await TotalPage1();
                  if(houseID != 0 && houseID != null && packageID != null && packageID != 0){
                      if(extraserviceID != 0 && extraserviceID != null){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BookingConfirmScreen(
                              id: widget.id,
                              houseID: houseID,
                              houseName: houseName,
                              packageID: packageID,
                              packageName: packageName,
                              extraserviceID: extraserviceID,
                              extraserviceName: extraserviceName,
                              subtotal: total,
                            )));
                      }else{
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BookingConfirmScreen(
                              id: widget.id,
                              houseID: houseID,
                              houseName: houseName,
                              packageID: packageID,
                              packageName: packageName,
                              extraserviceID: 0,
                              extraserviceName:  "kh??ng c?? d???ch v??? th??m",
                              subtotal: total,
                            )));
                      }

                  }
                  else {
                    ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(
                      ((houseID == 0 ||  houseID == null) && packageID != null && packageID != 0) ? "Ch???n ?????a ch??? ??i b???n ??i" :
                      (houseID != 0 &&  houseID != null && (packageID == null || packageID == 0)) ? "Ph???i ch???n g??i d???ch v??? ch???" :
                      ((houseID == 0 ||  houseID == null) && (packageID == null || packageID == 0)) ? "d???ch v??? v?? ?????a ch??? ???? ch???n ????u":
                      "Xem l???i ????n h??ng v?? ti???n h??nh thanh to??n nh??")));
                  }
                },
                child:  Container(
                  decoration: const BoxDecoration(
                      color: AppColor.primaryColor100,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(5), topRight: Radius.circular(5))
                  ),
                  child: const SizedBox(
                    height: 40,
                    width: 120,
                    child: Center(
                      child: Text(
                        'X??c nh???n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.secondaryColor100,
                            fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
    );
  }
}
