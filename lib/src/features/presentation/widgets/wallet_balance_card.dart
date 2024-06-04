import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paystreet/src/app/app.dart';
import 'package:paystreet/src/core/core.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({super.key});

  @override
  State<BalanceCard> createState() => _ReecentTransactionsState();
}

class _ReecentTransactionsState extends State<BalanceCard> {
   final _isAmountVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextSemiBold("Current Balance", color: AppColors.white, fontSize: 15, fontWeight: FontWeight.w400,),
              horizontalSpaceTiny,
              Icon(_isAmountVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined, color: AppColors.inactiveColor, size: 17,)
            ],
          ),
          
          Text(Functions.money(7680, "\$"), style: const TextStyle(
            color: AppColors.white,
            fontSize: 30,
            fontWeight: FontWeight.w400
          ),),
          verticalSpaceSmall,
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  padding:const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
                  decoration: BoxDecoration(
                color: AppColors.indigo,
                borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextSemiBold("Fund Account", color: AppColors.white,),
                  verticalSpaceTiny,
                  SvgPicture.asset(AppAsset.download, width: 18.w,)
                ],
                ),
                ),
              ),
            horizontalSpaceSmall,
             Flexible(
              flex: 1,
               child: Container(
                width: double.infinity,
                padding:const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
                decoration: BoxDecoration(
                color: AppColors.indigo,
                borderRadius: BorderRadius.circular(12)
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextSemiBold("Internal Transfer", color: AppColors.white,),
                  verticalSpaceTiny,
                  SvgPicture.asset(AppAsset.revert, width: 18.w,)
                ],
                  ),
                ),
             )
            ],
          ),
         
        ],
      ),
    );
  }
}