import 'package:flutter/material.dart';

import '../../utils/constanst.dart';
import '../../utils/routes.dart';

class OrderRatingTagButton extends StatelessWidget {
  const OrderRatingTagButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 80,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.orderDetailRatingScreen);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColor.primaryColor100),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2)
          )),
        ),
        child: const Text(
          'Đánh giá',
          style: AppText.textWhite1,
        ),
      ),
    );
  }
}
