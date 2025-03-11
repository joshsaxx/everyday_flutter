import 'package:flutter/material.dart';

class PaymentWalletModel {
  final String? title;
  final String? subtitle;
  final String? amount;
  final IconData? icon;


  PaymentWalletModel({this.title, this.subtitle, this.amount, this.icon});
  
  factory PaymentWalletModel.fromJson(Map<String, dynamic> json){
    return PaymentWalletModel(
      title: json['title'] ?? "",
      subtitle: json['subtitle'] ?? "",
      amount: json['amount'] ?? "",
      icon: Icons.settings,
    );
  }
}

final List<PaymentWalletModel> paymentWalletOptions = [
  PaymentWalletModel(title: "KFC", subtitle: "Jan 02", amount:"+\$100", icon: Icons.dinner_dining ),
  PaymentWalletModel(title: "PayPal", subtitle: "Jan 02", amount:"+\$500", icon: Icons.payment ),
  PaymentWalletModel(title: "Car Repair", subtitle: "Jan 02", amount:"+\$498", icon: Icons.car_repair_rounded ),
  
  
]; 