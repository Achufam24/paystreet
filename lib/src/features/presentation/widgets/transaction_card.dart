import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paystreet/src/app/styles/app_colors.dart';
import 'package:paystreet/src/app/widgets/widgets.dart';
import 'package:paystreet/src/core/utils/ui_helpers.dart';

class TransactionCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String  amount;
  const TransactionCard({super.key, required this.amount, required this.image, required this.subTitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(image, width: 42.w,),
              horizontalSpaceSmall,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextSemiBold(title, fontSize: 14, fontWeight: FontWeight.w400,),
                  verticalSpaceSmall,
                  TextSemiBold(subTitle, fontSize: 12, fontWeight: FontWeight.w400, color: const Color(0xff8D8D94),)
                ],
              ),
             
          
            ],
          ),
           horizontalSpaceTiny,
          TextSemiBold(amount, fontSize: 20, fontWeight: FontWeight.w400,)
        ],
      ),
    );
  }
}