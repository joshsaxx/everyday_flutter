import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_json/models/news_data.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_json/widgets/news_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProviderJson extends StatelessWidget {
  const ProviderJson({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (context) => NewsData(),
      builder: (context, child) {
        context.read<NewsData>().fetchData;
        return Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue[400],
            title: const Text("Top Stories - Saxx News"),
            actions: [
              IconButton(onPressed: (){
                context.read<NewsData>().initialValues();
                context.read<NewsData>().fetchData;
              }, icon: const Icon(Icons.refresh))
            ],
          ),
          body: RefreshIndicator(
              child: Center(
                child: Consumer<NewsData>(builder: (context, value, child) {
                  return value.map.length == 0 && !value.error
                      ? const CircularProgressIndicator()
                      : value.error
                          ? Text(
                              'Oops!! Something went wrong. ${value.errorMessage}',
                              textAlign: TextAlign.center)
                          : ListView.builder(
                            itemCount: value.map['member'].length,
                            itemBuilder: (context, index) {
                              return NewsCard(map: value.map['member']);
                            });
                }),
              ),
              onRefresh: () async {
                await context.read<NewsData>().fetchData;

              }),
        );
      },
    );
  }
}



