import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/assignments/payment_wallet/components/utils/images.dart';
import 'package:flutter_tuts/app/assignments/payment_wallet/components/utils/strings.dart';

class DebitCardWidget extends StatelessWidget {
  const DebitCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.deepPurple
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(Images.CHIP_ICON)),
                const SizedBox(height: 10,),
              const Text(Strings.cardNumber, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),),
              const Text(Strings.cardHolder, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
             
             Padding(
               padding: const EdgeInsets.only(top: 10.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Strings.cardExpiryLabel, style: TextStyle(color: Colors.white)),
                      Text(Strings.cardExpiry,  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(Images.VISA_ICON))
                ],
               ),
             )
             
          
                
            ],
          ),
        ),
      ),
    );
  }
}