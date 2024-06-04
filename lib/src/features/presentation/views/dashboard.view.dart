import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paystreet/src/app/app.dart';
import 'package:paystreet/src/core/core.dart';
import 'package:paystreet/src/features/data/data.dart';
import 'package:paystreet/src/features/presentation/presentation.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(AppAsset.avatar, width: 38.w, height: 38.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextSemiBold("Hi, Esther Bukola",fontSize: 13, fontWeight: FontWeight.w400, style: const TextStyle(
                  fontFamily: AppFonts.inter
                ),),
                TextSemiBold("Good Evening", color: AppColors.background, fontWeight: FontWeight.w700, fontSize: 15, style: const TextStyle(
                  fontFamily: AppFonts.inter
                ),),
              ],
            )
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius:BorderRadius.circular(25)

            ),
            
            child: SvgPicture.asset(AppAsset.qr)
            )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              const BalanceCard(),
              verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextSemiBold("Bill Payments", color: AppColors.textColor, fontSize: 16, fontWeight: FontWeight.w600,),
                  const Icon(Icons.keyboard_arrow_right_outlined, color: Color(0xffB9B9C6),)
                ],
              ),
              verticalSpaceTiny,
              const ActionButtons(),
              verticalSpaceMedium,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextSemiBold("Transactions", color: AppColors.textColor, fontSize: 16, fontWeight: FontWeight.w500,),
                  TextSemiBold("See All", color: AppColors.textColor, fontSize: 13, fontWeight: FontWeight.w400,)
                ],
              ),
              verticalSpaceSmall,
              Column(
              children: transactions.map((tr) => TransactionCard(amount: "${tr.type == "debit" ? "-" : "+"} ${Functions.money(tr.amount, "\$")}", image: tr.image, subTitle: tr.subTitle, title: tr.title)).toList()
            )
            ],
          ),
        ),
      ),
    );
  }
}

