import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/data_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Demo ${dataProvider.i}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => dataProvider.increment(),
        child: const Icon(Icons.add),
      ),
      body: Consumer<DataProvider>(
        builder: (context, provider, child) {
          return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("${provider.i}"),
              ],
            ),
          );
        },
      ),
    );
  }
}
