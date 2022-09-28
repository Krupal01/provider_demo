import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/json_provider.dart';

class JsonScreen extends StatelessWidget {
  const JsonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("json screen")),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Consumer<JsonProvider>(builder: (context, value, child) {
          value.getDataFromUrl();
          return Expanded(
            child: ListView.builder(
              itemCount: value.listdata.length,
              itemBuilder: (ctx, index) {
                return Text(value.listdata[index].title);
              },
            ),
          );
        }),
      ),
    );
  }
}
