import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/assignments/payment_wallet/components/payment_wallet_model.dart';


class WalletListTileWigdet extends StatelessWidget {
  final PaymentWalletModel? paymentWalletModel;
  const WalletListTileWigdet({
    super.key,
    this.paymentWalletModel
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color:const Color.fromARGB(255, 41, 39, 39), 
      borderRadius: BorderRadius.circular(16),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(paymentWalletModel?.icon,size: 50,color: Colors.white,),
        ),
        title: Text(paymentWalletModel?.title ?? "" ,style: const TextStyle(fontWeight: FontWeight.w800,fontSize: 15,color: Colors.white)),
        subtitle: Text(paymentWalletModel?.subtitle ?? "", style: const TextStyle(fontSize: 13, color: Colors.white),),
        trailing: Text(paymentWalletModel?.amount ?? "",style: const TextStyle(fontSize: 13, color: Colors.white),),
      
      ),
    );
  }
}