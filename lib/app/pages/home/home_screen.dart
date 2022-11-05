
import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/home_head.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/service_icon_list.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/service_title.dart';
import 'package:co_tam_customer_mobile/app/widgets/home/voucher_titile.dart';
import 'package:flutter/material.dart';

import '../../json_to_dart/voucher/list_of_voucher.dart';
import '../../rest_api/rest_api.dart';
import '../vouchers/voucher_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => HomeScreenState();
  }

class HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
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
                child: FutureBuilder<ListOfVoucher>(
                  future: ShowAllVoucher(1,3),
                  builder: (context, snapshot){
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(
                          color: AppColor.primaryColor30,
                        ),
                      );
                    }
                    if(snapshot.hasData){
                      if (snapshot.data!.data!.isEmpty) {
                        return const Center(
                          child: Text('there are no package at all!!!', style: TextStyle(
                              color: Colors.white, fontSize: 16
                          ),),
                        );
                      }
                      else {
                        return ListView.builder(
                          controller: _scrollController,
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            Data voucherDetail = snapshot.data!.data![index];
                            return Padding(
                                padding: const EdgeInsets.all(10),
                                child: GestureDetector(
                                  onTap: () {Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => VoucherDetailScreen(
                                        image: voucherDetail.image,
                                        code: voucherDetail.code,
                                        value: voucherDetail.value,
                                        startDate: voucherDetail.startDate,
                                        endDate: voucherDetail.endDate,
                                        amount: voucherDetail.amount,
                                        description: voucherDetail.description,
                                      )));},
                                  child: Image.asset(voucherDetail.image.toString(),
                                      fit: BoxFit.fill),
                                )
                            );
                          },
                        );
                      }

                    }
                    return const Center(
                      child: Text('Error'),
                    );
                  },
                )
              ),
            ],
          ),
        );
  }
}