
import 'package:co_tam_customer_mobile/app/widgets/home/home_head.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/service_icon_list.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/service_title.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/voucher_titile.dart';
import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => HomeScreenState();
  }

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: CustomScrollView(
            slivers: <Widget>[
              const SliverToBoxAdapter(
                child: SizedBox(height: 230, child: HomeHead()),
              ),
              const SliverToBoxAdapter(
                child:ServiceTitle(),
              ),
              const SliverToBoxAdapter(
                child: ServiceIconList(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 10),
              ),
              const SliverToBoxAdapter(
                child: VoucherTitle(),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {Navigator.pushNamed(context, Routes.voucherDetailScreen);},
                    child: Image.asset('assets/img/voucher.png'),
                  )
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {Navigator.pushNamed(context, Routes.voucherDetailScreen);},
                      child: Image.asset('assets/img/voucher2.png'),
                    )
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {Navigator.pushNamed(context, Routes.voucherDetailScreen);},
                      child: Image.asset('assets/img/voucher3.png'),
                    )
                ),
              ),
            ],
          ),
        );
  }
}