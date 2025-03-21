import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveUIScreen extends StatefulWidget {
  const ResponsiveUIScreen({super.key});

  @override
  State<ResponsiveUIScreen> createState() => _ResponsiveUIScreenState();
}

class _ResponsiveUIScreenState extends State<ResponsiveUIScreen> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;


    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Layouts'),
      ),
      //using height and width for responsiveness
      //body: width> 480 ? GridData() : ListData(),
      //making use of Orientation for responsiveness
      //body: orientation == Orientation.portrait ? ListData() : GridData(),
      body: LayoutBuilder(
        builder: (context, constraints){
          //constraints gives available space of the parent of the LayoutBuilder and in this case, Scaffold
          
          print("Media : $width");
          print("Media : $height");

          print("Builder : ${constraints.maxWidth}");
          print("Builder : ${constraints.maxHeight}");

          //difference in height cos of appBar presence, LayoutBuilder is taking the available space after the appBar

          if(constraints.maxWidth > 500){
            return GridData();
          }else{
            return ListData();
          }
        })
        ,
    );
  }
}

class GridData extends StatelessWidget {
  const GridData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 4,
      children: List.generate(20, (index){
        return ListTile(
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.waves),
          title: Text('Person ${index + 1}'),
        );
      }),
      );
  }
}

class ListData extends StatelessWidget {
  const ListData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index){
        return ListTile(
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.waves),
          title: Text('Person ${index + 1}'),
        );
    
      });
  }
}