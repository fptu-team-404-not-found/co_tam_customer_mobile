import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class VoucherTitle extends StatelessWidget {
  const VoucherTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Container(
        decoration:  const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: AppColor.primaryColor100,
                  width: 1,
                )
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5, bottom: 8),
              child: Text(
                'Ưu đãi',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.mainScreen2);
                },
                child: const Text(
                  "Xem thêm",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.grey,
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
