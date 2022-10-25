import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/utils/routes.dart';
import 'package:flutter/material.dart';

class BookingMainButton extends StatefulWidget {
  const BookingMainButton({Key? key}) : super(key: key);

  @override
  State<BookingMainButton> createState() => _BookingMainButtonState();
}

class _BookingMainButtonState extends State<BookingMainButton> {
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
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child:  Icon(
                        Icons.shopping_cart,
                        color: AppColor.primaryColor100,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        '50.000đ',
                        style: TextStyle(
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
                onTap: () {
                  Navigator.pushNamed(context, Routes.confirmBookingScreen);
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
                        'Xác nhận',
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
