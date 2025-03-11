import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidgetScreen extends StatelessWidget {
  const ImageWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Images in Flutter'),
        elevation: 5,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                )
              ],
            ),
          ),


          Card(
            //needed for the RoundedRectangleBorder to show
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(8),
            elevation: 10,
            child: Image.network('https://qph.cf2.quoracdn.net/main-qimg-4aa83c7d776cbdf75bd33aae8f2c8d8e'),
          ),


          CachedNetworkImage(
            errorWidget: (context, url, error) => const Icon(Icons.error, size: 100, color: Colors.red,),
            placeholder: (context, url) {
              return const Image(image: AssetImage('assets/images/placeholder.png')
              );
            } ,
            imageUrl: 'https://qph.cf2.quoracdn.net/main-qimg-4aa83c7d776cbdf75bd33aae8f2c8d8e',
            ),


          Image.network(
            'https://qph.cf2.quoracdn.net/main-qimg-4aa83c7d776cbdf75bd33aae8f2c8d8e',
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(
                child: CircularProgressIndicator()
              );
            },
          ),


          Image.asset('assets/images/profile.jpg'),
          

          const Image(image: AssetImage('assets/images/profile.jpg'))

        ],
      ),
    );
  }
}
