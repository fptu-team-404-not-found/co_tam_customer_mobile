import 'package:co_tam_customer_mobile/app/json_to_dart/voucher/list_of_voucher.dart';
import 'package:co_tam_customer_mobile/app/pages/vouchers/voucher_detail_screen.dart';
import 'package:co_tam_customer_mobile/app/widgets/vouchers/search_bar.dart';
import 'package:co_tam_customer_mobile/app/widgets/vouchers/voucher_tag.dart';
import 'package:flutter/material.dart';
import '../../rest_api/rest_api.dart';
import '../../widgets/appbar/top_app_bar.dart';

class VoucherMainScreen extends StatefulWidget {
  const VoucherMainScreen({Key? key}) : super(key: key);

  @override
  State<VoucherMainScreen> createState() => _VoucherMainScreenState();
}

class _VoucherMainScreenState extends State<VoucherMainScreen> {
  final ScrollController _scrollController = ScrollController();

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
                  color: const Color.fromARGB(255, 215, 215, 215),
                  child: FutureBuilder<ListOfVoucher>(
                    future: ShowAllVoucher(1,10),
                    builder: (context, snapshot){
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.deepPurpleAccent,
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
                            itemCount: 7,
                            itemBuilder: (BuildContext context, int index) {
                              Data voucherDetail = snapshot.data!.data![index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => VoucherDetailScreen(
                                        image: voucherDetail.image,
                                        code: voucherDetail.code,
                                        value: voucherDetail.value,
                                        startDate: voucherDetail.startDate,
                                        endDate: voucherDetail.endDate,
                                        amount: voucherDetail.amount,
                                        description: voucherDetail.description,
                                      )));
                                  /*Navigator.pushNamed(context, Routes.voucherDetailScreen);*/
                                  },
                                child: VoucherTag(
                                  voucherCode: voucherDetail.code.toString(),
                                  value: voucherDetail.value.toString(),
                                  endDate: voucherDetail.endDate.toString(),
                                  image: voucherDetail.image.toString(),
                                ),
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
            ),
          ]
      ),
    );
  }
}

