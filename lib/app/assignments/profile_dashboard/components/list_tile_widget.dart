import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/assignments/profile_dashboard/components/payment_options_modle.dart';

class ListTileWidget extends StatelessWidget {
  final PaymentOptionsModel? paymentOptionsModel;
  const ListTileWidget({
    super.key,
    this.paymentOptionsModel
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.white, 
      borderRadius: BorderRadius.circular(16),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        leading: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFE6E7F7),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(paymentOptionsModel?.icon),
          ),
        ),
        title: Text(paymentOptionsModel?.title ?? "" ,style: const TextStyle(fontWeight: FontWeight.w800,fontSize: 15)),
        subtitle: Text(paymentOptionsModel?.subtitle ?? ""),
        trailing: Text(paymentOptionsModel?.amount ?? "",style: const TextStyle(fontWeight: FontWeight.w800,fontSize: 15),),
      
      ),
    );
  }
}