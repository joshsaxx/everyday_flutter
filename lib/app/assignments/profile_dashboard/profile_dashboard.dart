import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/assignments/profile_dashboard/components/list_tile_widget.dart';
import 'package:flutter_tuts/app/assignments/profile_dashboard/components/payment_options_modle.dart';
import 'package:flutter_tuts/app/assignments/profile_dashboard/components/profile_card.dart';

class ProfileDashboardScreen extends StatelessWidget {
  const ProfileDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFDCE3EF),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFEDF2FA),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
          ),
          child:  Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0,left: 30,right: 30),
                child: ProfileCard(),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 10.0,left: 35,right: 35),
                child: Row(
                  children: [
                    Text("Overview",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600, color: Color(0xFF54587E))),
                    SizedBox(width: 10,),
                    Icon(Icons.notifications_outlined),
                    Spacer(),
                    Text("Sept 13, 2020")
                  ],
                ),
              ),

              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: paymentOptions.length,
                  itemBuilder: (context, index){
                    var paymentOption = paymentOptions[index];
                  return  Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 5,left: 15,right: 15),
                    child: ListTileWidget(paymentOptionsModel: paymentOption),
                  );
                
                }),
              )

              

            ],
          ),
        ),
      ),
    );
  }
}



