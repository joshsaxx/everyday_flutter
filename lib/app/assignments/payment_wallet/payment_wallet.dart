import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/assignments/payment_wallet/components/payment_wallet_model.dart';
import 'package:flutter_tuts/app/assignments/payment_wallet/components/utils/strings.dart';
import 'package:flutter_tuts/app/assignments/payment_wallet/components/widgets/debit_card_widget.dart';
import 'package:flutter_tuts/app/assignments/payment_wallet/components/widgets/wallet_list_tile_wiget.dart';

class PaymentWalletScreen extends StatelessWidget {
  const PaymentWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
          leading: const Icon(Icons.arrow_back_ios),
          actions: const [Icon(Icons.more_vert_outlined)],
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.yourCards,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        Strings.activeCardNumber,
                        style: TextStyle(
                            color: Color.fromARGB(255, 168, 163, 163)),
                      )
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow),
                        child: const Icon(Icons.add)))
              ],
            ),
            
            const DebitCardWidget(),

            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(Strings.recentTransactions,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 77, 76, 76))),
            ),

            Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: paymentWalletOptions.length,
                  itemBuilder: (context, index){
                    var paymentWalletOption = paymentWalletOptions[index];
                  return  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 5,left: 15,right: 15),
                    child: WalletListTileWigdet(paymentWalletModel: paymentWalletOption),
                  );
                
                }),
              )
          ],
        ),
      ),
    );
  }
}
