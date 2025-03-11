import 'package:flutter/material.dart';

class MenuModel {
  final String? title;
  final String? subtitle;
  final String? amount;
  final IconData? icon;


  MenuModel({this.title, this.subtitle, this.amount, this.icon});
  
  factory MenuModel.fromJson(Map<String, dynamic> json){
    return MenuModel(
      title: json['title'] ?? "",
      subtitle: json['subtitle'] ?? "",
      amount: json['amount'] ?? "",
      icon: Icons.settings,
    );
  }
}

final List<MenuModel> menuOptions = [
  MenuModel(title: "Wishlist", subtitle: "Jan 02", amount:"+\$100", icon: Icons.favorite_border_outlined ),
  MenuModel(title: "Bookings", subtitle: "Jan 02", amount:"+\$500", icon: Icons.check_circle_outline_outlined ),
  MenuModel(title: "Receipts", subtitle: "Jan 02", amount:"+\$498", icon: Icons.receipt ),
  MenuModel(title: "Payment Methods", subtitle: "Jan 02", amount:"+\$498", icon: Icons.credit_card ),
  MenuModel(title: "Help & Support", subtitle: "Jan 02", amount:"+\$498", icon: Icons.headset_mic_outlined ),

  
  
]; 