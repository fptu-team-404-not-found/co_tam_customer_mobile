import 'package:co_tam_customer_mobile/app/utils/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingButton extends StatefulWidget {
  const RatingButton({Key? key}) : super(key: key);

  @override
  State<RatingButton> createState() => _RatingButtonState();
}

class _RatingButtonState extends State<RatingButton> {
  double rating = 1;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        //1214
        /*foregroundColor: Colors.white,*/
        backgroundColor: AppColor.primaryColor100,
        padding: const EdgeInsets.all(10.0),
        textStyle: const TextStyle(fontSize: 14),
      ),
      onPressed: () => showRating(),
      child: const Text('Đánh giá'),
    );
  }

  Widget buildRating() => RatingBar.builder(
        minRating: 1,
        updateOnDrag: true,
        itemPadding: const EdgeInsets.symmetric(horizontal: 2),
        itemSize: 30,
        itemBuilder: (context, _) => const Icon(Icons.star, color: Colors.amber),
        onRatingUpdate: (rating) => setState(() {
          this.rating = rating;
        }),
      );
  void showRating() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Bạn có hài lòng về dịch vụ?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                buildRating()
              ],
            ),
            actions: [
              TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15.0),
                    backgroundColor: AppColor.primaryColor100,
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Đánh giá',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          ));
}
