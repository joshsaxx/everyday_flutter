import 'package:flutter/material.dart';

class StateManagementMainPage extends StatefulWidget {

  const StateManagementMainPage({super.key});

  @override
  State<StateManagementMainPage> createState() => _StateManagementMainPageState();
}

class _StateManagementMainPageState extends State<StateManagementMainPage> {
  String data = 'Josh Saxx';
  void changeValue (String dataChanged){
    setState(() {
      data = dataChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        foregroundColor: Colors.white,
        title: Text(data),
      ),
      body: Screen2(data: data,changeData: changeValue),
    );
  }
}

class Screen2 extends StatelessWidget {
  final String data;
  final Function(String) changeData;

  Screen2({super.key, required this.data, required this.changeData});
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Container(
      child: Screen3(data: data,changeData: changeData,),
    );
  }
}

class Screen3 extends StatelessWidget {
  final String data;
  final Function(String) changeData;
  const Screen3({super.key, required this.data, required this.changeData});
  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      child: Screen4(data: data,changeData: changeData,),
    );
  }
}

class Screen4 extends StatefulWidget {
  final String data;
  final Function(String) changeData;
  const Screen4({super.key,required this.data,required this.changeData});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.data),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
            onPressed: () {
              widget.changeData('John Doe');
            },
            child: Text('Change data'),
          ),
        ],
      ),
    );
  }
}