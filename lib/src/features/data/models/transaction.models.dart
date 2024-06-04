import 'package:paystreet/src/core/core.dart';

class Transactions {
  final String image;
  final String title;
  final String subTitle;
  final double  amount;
  final String type;
  const Transactions({required this.amount, required this.image, required this.subTitle, required this.title, required this.type});
}


   List<Transactions> transactions = [
    const Transactions(amount: 5000, image: AppAsset.shopping, subTitle: "12 May 2023, 09:00", title: "Shopping", type: "debit"),
    const Transactions(amount: 28000, image: AppAsset.transfer, subTitle: "12 May 2023, 09:00", title: "Transfer", type: "credit"),
    const Transactions(amount: 170, image: AppAsset.shopping, subTitle: "12 May 2023, 09:00", title: "Concert Ticket", type: "debit"),
    const Transactions(amount: 5000, image: AppAsset.transfer, subTitle: "12 May 2023, 09:00", title: "Shopping", type: "debit")
   ];
