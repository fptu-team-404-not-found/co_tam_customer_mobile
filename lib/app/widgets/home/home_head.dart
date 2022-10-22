import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

class HomeHead extends StatelessWidget {
  const HomeHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,//max ngang
              height: 157,
              decoration: const BoxDecoration(
                  color: AppColor.primaryColor
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 48,
                      left: 330,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child:  const SizedBox(
                          height: 40,
                          width: 40,
                          child:  Icon(
                            Icons.notifications,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      )
                  ),
                  Positioned(
                      top: 48,
                      left: 285,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child:  const SizedBox(
                          height: 40,
                          width: 40,
                          child:  Icon(
                            Icons.account_balance_wallet,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 42, left: 20),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Cô Tấm chào bạn,',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 224, 223, 233),
                            ),
                          ),
                          Text('Trần Văn Ba',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
            top: 100,
            left: 12,
            child: SizedBox(
              width: 360,
              height: 120,
              child: Image.asset('assets/img/home_decor.png'),
            )
        ),
      ],
    );
  }
}