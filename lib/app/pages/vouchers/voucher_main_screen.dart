import 'package:co_tam_customer_mobile/app/widgets/vouchers/search_bar.dart';
import 'package:co_tam_customer_mobile/app/widgets/vouchers/voucher_tag.dart';
import 'package:flutter/material.dart';

import '../../utils/routes.dart';
import '../../widgets/appbar/top_app_bar.dart';

class VoucherMainScreen extends StatelessWidget {
  const VoucherMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: TopAppBar('Voucher', null, null, null)),
        body: Column(
            children: [
              const SearchBar(),
              Expanded(
                child: Container(
                  color: Color.fromARGB(255, 215, 215, 215),
                  child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {Navigator.pushNamed(context, Routes.voucherDetailScreen);},
                        child: const VoucherTag(
                          voucherCode: 'shopet09',
                          value: '100000',
                          endDate: '25/10/2022',
                          image: 'assets/img/voucher.png',
                        ),
                      );
                    },
                  ),
                ),
              ),
            ]
          ),
        );
  }
}
