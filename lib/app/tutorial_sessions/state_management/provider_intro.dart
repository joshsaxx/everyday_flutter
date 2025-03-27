import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderMainPage extends StatelessWidget {
  const ProviderMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('Building MainPage');
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[400],
            foregroundColor: Colors.white,
            //title: Text(Provider.of<AppData>(context).name),
            //title: Text(context.watch<AppData>().name)

            //Wrap with Consumer to listen for the widget that is to be rebuilt, in this case, the Text Widget and not the entire class or screen
            title: Consumer<AppData>(
              builder: (context, value, child) {
                return Text(context.watch<AppData>().name);
              },
              ),

          ),
          body: Screen2(),
        );
      },
    );
  }
}

class Screen2 extends StatelessWidget {
  Screen2({super.key});
  @override
  Widget build(BuildContext context) {
    print('Building Screen2');
    return Container(
      child: Screen3(),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});
  @override
  Widget build(BuildContext context) {
    print('Building Screen3');
    return Container(
      child: Screen4(),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    print('Building Screen4');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Text(Provider.of<AppData>(context).name),
          //Text(context.watch<AppData>().name),

          Consumer<AppData>(
              builder: (context, value, child) {
                return Text(context.watch<AppData>().name);
              },
              ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            onPressed: () {
              //listen: false because the ElevatedButton is not part of the main widget tree that has its scaffold wrapped with ChangeNotifierProvider
              //Provider.of<AppData>(context,listen: false).changeData('John Doe');

              context.read<AppData>().changeData('John Doe');
            },
            child: const Text('Change data'),
          ),
        ],
      ),
    );
  }
}

class AppData with ChangeNotifier {
  //_name to make it private
  String _name = 'Josh Saxx';

  void changeData(String data) {
    _name = data;
    notifyListeners();
  }

  //getter method because _name is private
  String get name => _name;
}
