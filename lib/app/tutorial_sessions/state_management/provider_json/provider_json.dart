import 'package:flutter/material.dart';
import 'package:flutter_tuts/app/tutorial_sessions/state_management/provider_json/models/news_data.dart';
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
                            itemCount: value.map['androidCurrentVersion'].length,
                            itemBuilder: (context, index) {
                              return NewsCard(map: value.map['androidCurrentVersion']);
                            });
                }),
              ),
              onRefresh: () async {}),
        );
      },
    );
  }
}


class NewsCard extends StatelessWidget {
  final Map<String,dynamic> map;
  const NewsCard({super.key,required this.map});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          ),
        ),
      
      ),
    );
  }
}
