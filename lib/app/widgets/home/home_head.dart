import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';

import '../../utils/routes.dart';

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
              height: 170,
              decoration: const BoxDecoration(
                  color: AppColor.primaryColor100
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 60,
                      left: 330,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.notificationScreen);
                            },
                            icon: const Icon(
                              Icons.notifications,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                  ),
                  Positioned(
                      top: 60,
                      left: 285,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                          child:  IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.walletScreen);
                            },
                            icon: const Icon(
                              Icons.account_balance_wallet,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 60, left: 20),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Cô Tấm dell chào bạn,',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 224, 223, 233),
                            ),
                          ),
                          Text('Nguyễn Đào Đức Quân',
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
            top: 110,
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
