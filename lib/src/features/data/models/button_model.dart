import 'package:flutter/cupertino.dart';
import 'package:paystreet/src/core/core.dart';

class ButtonModel {
  final String icon;
  final String text;
  final String link;
  final Color bgColor;
  ButtonModel({ required this.icon, required this.text, required this.link , required this.bgColor});
}


class TransactionUIModel {

final String name;
  final String time;
  final String image;
final double amount;

TransactionUIModel({required this.name, required this.image, required this.amount, required this.time});
}

   List<ButtonModel> actionButton = [
    ButtonModel(icon: AppAsset.vector, text: "Buy Airtime", link: "/", bgColor: const Color(0xffCFEDFA)),
    ButtonModel(icon: AppAsset.wifiIcon, text: "Buy Data", link: "/", bgColor: const Color(0xffDDFACF)),
    ButtonModel(icon: AppAsset.tvIcon, text: "Cable Tv", link: "/", bgColor: const Color(0xffD4FBEC)),
    ButtonModel(icon: AppAsset.electricityIcon, text: "Electricity", link: "/", bgColor: const Color(0xffFACFF3)),
    ButtonModel(icon: AppAsset.faceIcon, text: "Become an Agent", link: "/", bgColor: const Color(0xffFAF5CF)),
    ButtonModel(icon: AppAsset.academicIcon, text: "Education Payment", link: "/", bgColor: const Color(0xffFACFE1)),
    ButtonModel(icon: AppAsset.baseIcon, text: "Withdraw Funds", link: "/", bgColor: const Color(0xffDDCFFA)),
    ButtonModel(icon: AppAsset.fuelIcon, text: "Ask4 Pay", link: "/", bgColor: const Color(0xffF1FACF)),
   ];