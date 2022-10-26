import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

class AccountHead extends StatelessWidget {
  const AccountHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 45.0),
      child: SizedBox(
        height: 280,
        child: Stack(
          children: [
            Container(
              color: AppColor.primaryColor100,
              height: 175,
              width: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 12),
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img/voucher.png'))),
                  ),
                  Text(
                    'Nguyễn Văn Ba',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
