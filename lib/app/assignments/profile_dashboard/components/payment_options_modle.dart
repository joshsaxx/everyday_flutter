import 'package:flutter/material.dart';

class PaymentOptionsModel {
  final String? title;
  final String? subtitle;
  final String? amount;
  final IconData? icon;


  PaymentOptionsModel({this.title, this.subtitle, this.amount, this.icon});
  
  factory PaymentOptionsModel.fromJson(Map<String, dynamic> json){
    return PaymentOptionsModel(
      title: json['title'] ?? "",
      subtitle: json['subtitle'] ?? "",
      amount: json['amount'] ?? "",
      icon: Icons.arrow_upward,
    );
  }
}

final List<PaymentOptionsModel> paymentOptions = [
  PaymentOptionsModel(title: "Send", subtitle: "Sending Payments to Clients", amount:"\$150", icon: Icons.arrow_upward ),
  PaymentOptionsModel(title: "Receive", subtitle: "Receive Salary from Company", amount:"\$250", icon: Icons.arrow_downward ),
  PaymentOptionsModel(title: "Loan", subtitle: "Loan for the Car", amount:"\$400", icon: Icons.money ),
  
  
]; 