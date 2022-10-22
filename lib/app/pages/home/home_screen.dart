
import 'package:co_tam_customer_mobile/app/widgets/home/home_head.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/service_icon_list.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/service_title.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/voucher_titile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => HomeScreenState();
  }

class HomeScreenState extends State<HomeScreen> {
  List imgList = [
    Image.asset('assets/img/voucher.png'),
    Image.asset('assets/img/voucher2.png'),
    Image.asset('assets/img/voucher3.png'),
    Image.asset('assets/img/voucher.png'),
    Image.asset('assets/img/voucher2.png'),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              const SliverToBoxAdapter(
                child: SizedBox(height: 230, child: HomeHead()),
              ),
              const SliverToBoxAdapter(
                child:ServiceTitle(),
              ),
              const SliverToBoxAdapter(
                child: VoucherTitle(),
              ),
             SliverList(delegate:  SliverChildListDelegate(
               imgList
                   .map((e) => Padding(
                   padding: const EdgeInsets.all(10),
                   child: (e)))
                   .toList(),
             )
              )
            ],
          ),
        );
  }
}