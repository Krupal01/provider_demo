import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/data_provider.dart';
import 'package:provider_demo/home_page.dart';
import 'package:provider_demo/json_provider.dart';
import 'package:provider_demo/json_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JsonProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const JsonScreen(),
      ),
    );
  }
}
